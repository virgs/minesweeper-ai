import { Board } from "./Board";
import { Proposition } from "./Proposition";

export class MineSweeperSolver {
    private readonly board: Board;
    private readonly totalCells: number;
    private mineCells: number[]
    private safeCells: number[]
    private propositions: Proposition[]

    public constructor(board: Board) {
        this.board = board;
        this.safeCells = []
        this.mineCells = []
        this.totalCells = this.board.properties.height * this.board.properties.width;
        const initialPropositionCells = Array
            .from(Array(this.totalCells).keys())

        this.propositions = [new Proposition(initialPropositionCells, this.board.properties.mines)]
    }

    public selectUnreveilledSafeCell(): number | undefined {
        const cells = this.board.getCells()
        return this.safeCells
            .find(safe => cells[safe].isUnreveilled());
    }

    public selectLowerChanceCell(): number {
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

        while (!this.boardIsSolved()) {
            let changed = false;
            changed = this.derivePropositions() || changed
            changed = this.updatePropositionConclusions() || changed
            changed = this.checkFinalProposition() || changed

            this.propositions = this.propositions
                .filter(proposition => !proposition.isSatisfied() && proposition.getCells().length >= 0)

            console.log(changed, this.propositions.map(p => p.toString()))
            if (!changed) {
                break
            }
        }

        console.log('ai mines', this.mineCells)
        console.log('ai safes', this.safeCells)
        console.log('ai unreveilled', Array
            .from(Array(this.totalCells).keys())
            .filter(cellIndex => !this.safeCells.includes(cellIndex))
            .filter(cellIndex => !this.mineCells.includes(cellIndex))
        )
    }

    private boardIsSolved() {
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
            // .filter(cellIndex => !this.mineCells.includes(cellIndex) && !this.safeCells.includes(cellIndex))
            .map((cellIndex) => {
                this.addSafeCells(cellIndex);
                const adjCells = this.board.getAdjacentCellsIndex(cellIndex);
                const adjacentsNotReveilledIndex = adjCells
                    .filter(adjIndex => boardCells[adjIndex].isUnreveilled());

                const newProposition = new Proposition(adjacentsNotReveilledIndex, boardCells[cellIndex].minesAround);
                if (newProposition.isSatisfied()) {
                    if (newProposition.hasNoMine()) {
                        this.addSafeCells(...adjacentsNotReveilledIndex);
                    } else {
                        this.addMineCells(...adjacentsNotReveilledIndex);
                    }
                } else {
                    console.log('checking ' + cellIndex)
                    this.addProposition(newProposition);
                }
            });
    }


    private updatePropositionConclusions(): boolean {
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

        let propositionMap: { [propname: string]: Proposition } = {};
        this.propositions
            .forEach(proposition => {
                propositionMap[proposition.toString()] = proposition
            });

        this.propositions = Object.values(propositionMap)

        // redundantRemovedPropositions.push(...this.propositions
        //     .filter((external, externalIndex) => {
        //         return !this.propositions
        //             .filter((_, intIndex) => intIndex > externalIndex)
        //             .some(internal => internal.isEqual(external))
        //     }))
        return result;
    }

    private addProposition(newProposition: Proposition) {
        if (this.propositions
            .some(proposition => proposition.isEqual(newProposition))) {
            return;
        }
        newProposition.removeMineCells(this.mineCells)
        newProposition.removeSafeCells(this.safeCells)
        if (newProposition.isSatisfied()) {
            if (newProposition.hasNoMine()) {
                this.addSafeCells(...newProposition.getCells())
            } else {
                this.addMineCells(...newProposition.getCells())
            }
            return;
        }

        console.log('new proposition discovered' + newProposition.toString())
        this.propositions.push(newProposition)
    }


    private addSafeCells(...cellIndexes: number[]) {
        this.propositions
            .forEach(proposition => { proposition.removeSafeCells(cellIndexes) });

        this.safeCells.push(...cellIndexes
            .filter(index => !this.safeCells.includes(index))
            .map(index => {
                console.log('new safe cell discovered: ' + index)
                return index
            }))

        this.safeCells.sort((a, b) => a - b)
    }

    private addMineCells(...cellIndexes: number[]) {
        this.propositions
            .forEach(proposition => { proposition.removeMineCells(cellIndexes) });
        this.mineCells.push(...cellIndexes
            .filter(index => !this.mineCells.includes(index))
            .map(index => {
                console.log('new mine discovered: ' + index)
                return index
            }))
        this.mineCells.sort((a, b) => a - b)
    }

    private derivePropositions(): boolean {
        let newPropositions: Proposition[] = []
        for (let a of this.propositions) {
            for (let b of this.propositions) {
                if (a.getCells().length === 0 || b.getCells().length === 0) {
                    continue
                }
                if (b.isSubSetOf(a)) {
                    const differenceProposition = a.subtract(b);
                    if (!this.propositions
                        .find(original => original.isEqual(differenceProposition))) {
                        if (!newPropositions
                            .find(newList => newList.isEqual(differenceProposition))) {
                            if (differenceProposition.isSatisfied()) {
                                const satisfiedCells = differenceProposition.getCells();
                                if (differenceProposition.hasNoMine()) {
                                    this.addSafeCells(...satisfiedCells)
                                } else {
                                    this.addMineCells(...satisfiedCells)
                                }
                            } else {
                                console.log(b.toString(), 'is subset of', a.toString(), 'diff', differenceProposition.toString())
                                newPropositions.push(differenceProposition)
                                break
                            }

                        }
                    }
                }
            }
        }

        newPropositions = newPropositions
            .map(proposition => {
                proposition.removeMineCells(this.mineCells)
                proposition.removeSafeCells(this.safeCells)
                return proposition
            });
        newPropositions.forEach(newProposition => this.addProposition(newProposition))
        return newPropositions.length > 0;
    }
}