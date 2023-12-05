import type { BoardProperties } from "./BoardProperties";

export type GameConfigurationType = {
    [level: string]: BoardProperties;
};

export const GameConfigurations: GameConfigurationType = {
    Beginner: {
        height: 9, width: 9, mines: 10
    },
    Intermediate: {
        height: 16, width: 16, mines: 40
    },
    Expert: {
        height: 16, width: 30, mines: 99
    },
}