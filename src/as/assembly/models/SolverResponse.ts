import { JSON } from "json-as/assembly";

@serializable
export class SolverUpdateResponse {
    knownMineCellsIds!: i32[]
    knownSafeCellsIds!: i32[]
}

@serializable
export class SolverGuessResponse {
    id!: i32;
    mines!: i32;
    cells!: i32;
}