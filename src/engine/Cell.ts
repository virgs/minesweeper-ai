export class Cell {
    private readonly _id: number
    private _hasMine: boolean
    private _minesAround: number
    private _revealed: boolean

    public constructor(id: number) {
        this._hasMine = false
        this._revealed = false
        this._minesAround = 0
        this._id = id
    }

    public get id(): any {
        return this._id
    }

    public get hasMine(): boolean {
        return this._hasMine
    }

    public set hasMine(value: boolean) {
        this._hasMine = value
    }

    public get minesAround(): number {
        return this._minesAround
    }

    public set minesAround(value: number) {
        this._minesAround = value
    }

    public isRevealed(): boolean {
        return this._revealed
    }

    public isNotRevealed(): boolean {
        return !this._revealed
    }

    public reveal(): void {
        this._revealed = true
    }
}
