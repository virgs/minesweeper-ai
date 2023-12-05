export class Cell {
    private readonly _id: number
    private mine: boolean
    private minesCount: number
    private revealed: boolean

    public constructor(id: number) {
        this.mine = false
        this.revealed = false
        this.minesCount = 0
        this._id = id
    }

    public get id(): any {
        return this._id
    }

    public get hasMine(): boolean {
        return this.mine
    }

    public set hasMine(value: boolean) {
        this.mine = value
    }

    public get minesAround(): number {
        return this.minesCount
    }

    public set minesAround(value: number) {
        this.minesCount = value
    }

    public isRevealed(): boolean {
        return this.revealed
    }

    public isNotRevealed(): boolean {
        return !this.revealed
    }

    public reveal(): void {
        this.revealed = true
    }
}
