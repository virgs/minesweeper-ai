import { Board } from "./Board";
import { Proposition } from "./Proposition";

export class MineSweeperSolver {
    private readonly board: Board;
    private readonly totalCells: number;
    private mineCells: number[]
    private safeCells: number[]
    private propositions: Proposition[]
    private addedMainProposition: boolean

    public constructor(board: Board) {
        this.board = board;
        this.safeCells = []
        this.mineCells = []
        this.addedMainProposition = false
        this.totalCells = this.board.properties.height * this.board.properties.width;

        this.propositions = []
    }

    public selectUnreveilledSafeCell(): number | undefined {
        const cells = this.board.getCells()
        return this.safeCells
            .find(safe => cells[safe].isUnreveilled());
    }

    public selectLowestChanceCell(): number {
        let lowetRationPropositionIndex = -1;
        this.propositions
            .reduce((lowestMineRatio, proposition, index) => {
                const mineRation = proposition.getMineRatio();
                if (mineRation < lowestMineRatio) {
                    lowetRationPropositionIndex = index
                    lowestMineRatio = mineRation;
                }
                return lowestMineRatio
            }, Infinity)
        if (lowetRationPropositionIndex >= 0) {
            const selectedProposition = this.propositions[lowetRationPropositionIndex];
            console.log('Going luck based: ' + selectedProposition.toString() + ' ' + Math.trunc(selectedProposition.getMineRatio() * 10000) / 100 + '%')
            return selectedProposition.getRandomCell();
        }
        console.log('Going blind')
        const unsafeCells: number[] = Array
            .from(Array(this.totalCells).keys())
            .filter(index => !this.safeCells.includes(index))
            .filter(index => !this.mineCells.includes(index))
        return unsafeCells[Math.floor(Math.random() * unsafeCells.length)]
    }

    public async updatePropositions(openCells: number[]) {
        this.createNewPropositions(openCells);
        if (this.totalCells - this.mineCells.length - this.safeCells.length < 50) {
            const initialPropositionCells = Array
                .from(Array(this.totalCells).keys())
            this.addedMainProposition = true;
            console.log('adding initial proposition')
            this.addProposition(new Proposition(initialPropositionCells, this.board.properties.mines))
            this.derivePropositions()
        }



        while (!this.boardIsSolved()) {
            if (this.removeKnownCellsFromPropositions()) {
                this.derivePropositions()
            } else {
                break
            }
        }


        console.log(this.propositions.map(p => p.toString()))
        console.log('ai mines', this.mineCells)
        console.log('ai safes', this.safeCells)
        console.log('ai unreveilled', Array
            .from(Array(this.totalCells).keys())
            .filter(cellIndex => !this.safeCells.includes(cellIndex))
            .filter(cellIndex => !this.mineCells.includes(cellIndex))
        )
    }

    private reducePropositions() {
        const previousLength = this.propositions.length
        this.propositions = this.propositions
            .filter(proposition => !proposition.isSatisfied() && proposition.getCells().length >= 0)
        let propositionMap: { [propname: string]: Proposition } = {};
        this.propositions
            .forEach(proposition => {
                propositionMap[proposition.toString()] = proposition
            });

        this.propositions = Object.values(propositionMap)
        return this.propositions.length !== previousLength;
    }

    public boardIsSolved() {
        if (this.safeCells.length >= this.totalCells - this.board.properties.mines) {
            console.log('done by safe cells', this.safeCells.length, this.totalCells - this.board.properties.mines)
            Array
                .from(Array(this.totalCells).keys())
                .filter(cellIndex => !this.safeCells.includes(cellIndex))
                .forEach(cellIndex => this.addMineCells(cellIndex))
            return true
        }
        if (this.mineCells.length >= this.board.properties.mines) {
            console.log('done by mines', this.mineCells.length, this.board.properties.mines)
            Array
                .from(Array(this.totalCells).keys())
                .filter(cellIndex => !this.mineCells.includes(cellIndex))
                .forEach(cellIndex => this.addSafeCells(cellIndex))
            return true
        }
        return false;
    }

    private checkFinalProposition(): boolean {
        const reveilledCellsAmount = this.safeCells.length + this.mineCells.length
        const finalPropositions = this.propositions
            .filter(proposition => proposition.getMines() + reveilledCellsAmount >= this.totalCells);
        if (finalPropositions.length > 0) {
            console.log('final proposition', finalPropositions[0])
        }
        return false
    }

    private createNewPropositions(openCells: number[]) {
        const boardCells = this.board.getCells()
        openCells
            .forEach(cellIndex => {
                this.addSafeCells(cellIndex);
                const adjCells = this.board.getAdjacentCellsIndex(cellIndex);
                const newProposition = new Proposition(adjCells, boardCells[cellIndex].minesAround);
                this.addProposition(newProposition);
            });
    }


    private removeKnownCellsFromPropositions(): boolean {
        let result = false;
        this.propositions
            .filter(proposition => proposition.isSatisfied())
            .forEach(satisfied => {
                result = true
                const satisfiedCells = satisfied.getCells();
                if (satisfied.hasNoMine()) {
                    this.addSafeCells(...satisfiedCells);
                } else {
                    this.addMineCells(...satisfiedCells);
                }
            });
        this.reducePropositions()
        return result;
    }

    private addProposition(newProposition: Proposition): boolean {
        newProposition.removeMineCells(this.mineCells)
        newProposition.removeSafeCells(this.safeCells)
        if (this.propositions
            .some(proposition => proposition.isEqual(newProposition))) {
            return false;
        }
        if (newProposition.isSatisfied()) {
            if (newProposition.hasNoMine()) {
                return this.addSafeCells(...newProposition.getCells())
            } else {
                return this.addMineCells(...newProposition.getCells())
            }
        }

        console.log('new proposition discovered' + newProposition.toString())
        this.propositions.push(newProposition)
        return true
    }

    private addSafeCells(...cellIndexes: number[]): boolean {
        const changed = this.propositions
            .filter(proposition => proposition.removeSafeCells(cellIndexes))
            .length > 0;

        let previousLength = this.safeCells.length
        this.safeCells.push(...cellIndexes
            .filter(index => !this.safeCells.includes(index))
            .map(index => {
                console.log('new safe cell discovered: ' + index)
                return index
            }))

        this.safeCells.sort((a, b) => a - b)
        return changed || previousLength !== this.safeCells.length
    }

    private addMineCells(...cellIndexes: number[]): boolean {
        const changed = this.propositions
            .filter(proposition => proposition.removeMineCells(cellIndexes))
            .length > 0

        let previousLength = this.mineCells.length
        this.mineCells.push(...cellIndexes
            .filter(index => !this.mineCells.includes(index))
            .map(index => {
                console.log('new mine discovered: ' + index)
                return index
            }))
        this.mineCells.sort((a, b) => a - b)
        return changed || previousLength !== this.safeCells.length
    }

    private derivePropositions(): boolean {
        let newPropositions: Proposition[] = []
        for (let a of this.propositions) {
            for (let b of this.propositions) {
                if (b.isSubSetOf(a)) {
                    const differenceProposition = a.subtract(b);
                    console.log(b.toString(), 'is subset of', a.toString(), 'diff', differenceProposition.toString())
                    newPropositions.push(differenceProposition)
                }
            }
        }

        return newPropositions
            .filter(newProposition => this.addProposition(newProposition))
            .length > 0
    }
}