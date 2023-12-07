export class Cell {
    private readonly _id: number
    private mine: boolean
    private minesCount: number
    private revealed: boolean
    private _flagged: boolean
    private _aiMarkedMine: boolean
    private _aiMarkedSafe: boolean

    public constructor(id: number) {
        this.mine = false
        this.revealed = false
        this.minesCount = 0
        this._aiMarkedMine = false
        this._aiMarkedSafe = false
        this._flagged = false
        this._id = id
    }

    public get id(): any {
        return this._id
    }

    public get flagged(): boolean {
        return this._flagged
    }
    public set flagged(value: boolean) {
        this._flagged = value
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

    public get aiMarkedMine(): boolean {
        return this._aiMarkedMine
    }

    public set aiMarkedMine(value: boolean) {
        this._aiMarkedMine = value
    }

    public get aiMarkedSafe(): boolean {
        return this._aiMarkedSafe
    }

    public set aiMarkedSafe(value: boolean) {
        this._aiMarkedSafe = value
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
