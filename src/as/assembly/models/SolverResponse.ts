import { JSON } from "json-as/assembly";
import { Guess } from "./Guess";

@serializable
export class SolverResponse {
    knownMineCellsIds!: i32[];
    knownSafeCellsIds!: i32[];
    guesses!: Guess[];
}
