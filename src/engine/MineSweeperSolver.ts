import { Board, Cell } from "./Board";
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

        const cells = board.getCells()
        const initialPropositionCells = cells
            .map((_, index) => index)
        this.totalCells = cells.length
        const initialProposition = new Proposition(initialPropositionCells, board.properties.mines)
        this.propositions = [initialProposition]
    }

    public selectNextIndex() {
        const cells = this.board.getCells()
        let nextIndex = this.safeCells
            .find(safe => cells[safe] === Cell.UNREVEILED);
        if (nextIndex !== undefined) {
            return nextIndex;
        }

        // luck guess
        this.propositions
            .reduce((acc, proposition, index) => {
                const chance = proposition.getCellChance();
                if (chance < acc) {
                    nextIndex = index
                    acc = chance;
                }
                return acc
            }, Infinity)
        const selectedProposition = this.propositions[nextIndex];
        console.log('Going luck based: ' + Math.trunc(selectedProposition.getCellChance() * 10000) / 100 + '%')
        return selectedProposition.getRandomCell();
    }

    public updatePropositions(openCells: number[]) {
        // console.log('open cells ' + [...openCells.sort((a, b) => a - b)])
        openCells
            .map(cell => {
                const cellType: Cell = this.board.getCell(cell)
                if (cellType !== Cell.UNREVEILED) {
                    this.safeCells.push(cell)
                    const adjacents = this.board.getAdjacentCells(cell)
                    const newProposition = new Proposition(adjacents, cellType);
                    this.propositions.push(newProposition)
                }
            })


        let changed = true;
        while (changed) {
            console.log('iteration')
            // console.log('iterations propositions', this.propositions.length)
            // console.log('firstProp', this.propositions[0]?.toString())
            changed = false
            changed = this.removeKnownCells() || changed;
            changed = this.updatePropositionConclusions() || changed;
            this.propositions = this.propositions
                .filter(proposition => !proposition.isSatisfied())
            changed = this.derivePropositions() || changed;
            this.safeCells = Array.from(new Set(this.safeCells).values()).sort((a, b) => a - b)
            this.mineCells = Array.from(new Set(this.mineCells).values()).sort((a, b) => a - b)
            if (this.safeCells.length === this.totalCells - this.board.properties.mines || this.mineCells.length === this.board.properties.mines) {
                // console.log('break')
                break
            }
        }



        console.log('mines', this.mineCells)
        console.log('safes', this.safeCells)
    }

    private removeKnownCells(): boolean {
        let result = false;
        this.propositions
            .forEach(proposition => {
                result = result || proposition.removeSafeCells(this.safeCells);
                result = result || proposition.removeMineCells(this.mineCells);
            });
        if (result) {
            // console.log('cells removed')
        }
        return result;
    }

    private updatePropositionConclusions(): boolean {
        let result = false;
        this.propositions
            .filter(proposition => proposition.isSatisfied())
            .forEach(satisfied => {
                // console.log('satisfied', satisfied.toString())
                result = true
                const satisfiedCells = satisfied.getCells();
                if (satisfied.hasNoMine()) {
                    this.safeCells.push(...satisfiedCells);
                } else {
                    // console.log('known mines', satisfiedCells)
                    this.mineCells.push(...satisfiedCells);
                }
            });

        // if (result) {
        //     console.log('updatePropositionConclusions removed')
        // }

        // console.log('mines', this.mineCells.sort())
        // console.log('safes', this.safeCells.sort())

        return result;
    }

    private derivePropositions(): boolean {
        const newPropositions = []
        for (let a of this.propositions) {
            for (let b of this.propositions) {
                if (b.isSubSetOf(a)) {
                    const differenceProposition = a.subtract(b);
                    if (!this.propositions
                        .find(original => original.isEqual(differenceProposition))) {
                        if (!newPropositions
                            .find(newList => newList.isEqual(differenceProposition))) {

                            if (differenceProposition.isSatisfied()) {
                                const satisfiedCells = differenceProposition.getCells();
                                if (differenceProposition.hasNoMine()) {
                                    this.safeCells.push(...satisfiedCells);
                                } else {
                                    // console.log('known mines', satisfiedCells)
                                    this.mineCells.push(...satisfiedCells);
                                }
                                break;
                            } else {

                                // console.log(b.toString(), 'is subset', a.toString(), 'diff', differenceProposition.toString())
                                // newPropositions.push(differenceProposition)
                            }

                        }
                    }
                }
            }
        }
        // this.propositions
        //     .forEach(a => {
        //         this.propositions
        //             .forEach(b => {
        //                 if (b.isSubSetOf(a)) {
        //                     const differenceProposition = a.subtract(b);
        //                     if (!this.propositions
        //                         .find(original => original.isEqual(differenceProposition))) {
        //                         if (!newPropositions
        //                             .find(newList => newList.isEqual(differenceProposition))) {

        //                             if (differenceProposition.isSatisfied()) {
        //                                 const satisfiedCells = differenceProposition.getCells();
        //                                 if (differenceProposition.hasNoMine()) {
        //                                     this.safeCells.push(...satisfiedCells);
        //                                 } else {
        //                                     // console.log('known mines', satisfiedCells)
        //                                     this.mineCells.push(...satisfiedCells);
        //                                 }

        //                             } else {

        //                                 // console.log(b.toString(), 'is subset', a.toString(), 'diff', differenceProposition.toString())
        //                                 newPropositions.push(differenceProposition)
        //                             }

        //                         }
        //                     }
        //                 }
        //             });
        //     });
        // console.log(`current props length: ${this.propositions.length} new: ${newPropositions.length}`)
        this.propositions.push(...newPropositions)
        return newPropositions.length > 0;
    }
}