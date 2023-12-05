import { Guess } from "./Guess";

@serilizable
export class SolverResponse {
    knownMineCellsIds!: number[];
    knownSafeCellsIds!: number[];
    guesses!: Guess[];

}
