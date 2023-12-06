import { JSON } from "json-as/assembly";

declare global {
    //@ts-ignore
    var serializable: ClassDecorator
}

export { JSON }