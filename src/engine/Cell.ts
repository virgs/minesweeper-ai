
export class Cell {
    readonly minesAround: number;
    private reveilled: boolean = false;

    public constructor(minesAround: number) {
        this.minesAround = minesAround;
    }

    public reveil() {
        this.reveilled = true;
    }

    public isReveilled(): boolean {
        return this.reveilled;
    }

    public isUnreveilled(): boolean {
        return !this.reveilled;
    }
}
