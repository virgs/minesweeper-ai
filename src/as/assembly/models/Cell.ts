@serializable
export class Cell {
    _id!: i32
    mine!: boolean
    minesCount!: i32
    revealed!: boolean
}