// The entry file of your WebAssembly module.
import { JSON } from "json-as/assembly";
import { Board } from "./Board";
import { SolverResponse } from "./SolverResponse";

class AI {
    counter: i32 = 0
    method(): void {
        ++this.counter
        console.log(this.counter.toString())
    }
}

const ai = new AI()
export function board(text: string): string {
    ai.method()
    // Parse an object using the JSON object
    const parsed = JSON.parse<Board>(text);

    console.log('virgs')
    // console.log(text.substring(0, 256))
    // console.log(parsed.properties.height.toString())
    console.log(parsed.cells.at(0).mine.toString())
    // console.log(parsed.getCellById(2).minesCount.toString())


    // if (!ai) {
    //     ai = new MineSweeperSolver(this.board as Board)
    // }
    // ai.updatePropositions(revealedCells)
    // const safeCells = ai.selectUnrevealedSafeCell().map(cell => cell.id)
    // this.knownSafeCellsIds = safeCells
    // this.knownMineCellsIds = ai.getKnownMineCellsIds()
    // if (safeCells.length > 0) {
    //     this.cellClick({ cell: this.board.getCellById(safeCells[0])! })
    //     return
    // }
    // console.log('safe cells to click on', safeCells)

    const response: SolverResponse = {
        knownMineCellsIds: [0, 2, 3, 10],
        knownSafeCellsIds: [4, 6, 7],
        guesses: [{
            mines: 4,
            cells: 5
        }]
    }
    return JSON.stringify(response)
}   