@serializable
export class Cell {
    _id!: i32
    minesCount: i32 = -1
    revealed!: boolean
}