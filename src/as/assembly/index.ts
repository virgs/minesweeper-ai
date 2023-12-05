// The entry file of your WebAssembly module.
import { JSON } from "json-as/assembly";

@serializable
class BoardConfig {
    height!: i32;
    width!: i32;
    mines!: i32;
}

export function board(text: string): string {
    // Parse an object using the JSON object
    const parsed = JSON.parse<BoardConfig>(text);

    console.log(text)
    console.log(parsed.height.toString())
    return "result " + parsed.mines.toString()
}   