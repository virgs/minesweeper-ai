# minesweeper-ai

![Screenshot](./Screenshot.png)

Yet another game-oriented-artificial-intelligence-fun-and-studying-project

These were the mains goals behind it:

- [Study minesweeper AI](https://en.wikipedia.org/wiki/Mancala)
- [Study webworkers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Using_web_workers)
- [Study webassembly](https://en.wikipedia.org/wiki/Minimax)
- [Study assembly script](https://en.wikipedia.org/wiki/Minimax)
- Have fun. Yay.

If you want to, you can play with your friends or/and defy the AI. I should warn you, it's not a good idea.

[Play it here](https://virgs.github.io/mancala/)

## Minesweeper

Beginner - The player is presented with a 9x9 grid in which 10 mines are concealed. On any turn after the first turn, if you pick a random square, there is a 1 in 8.1 (10 mines/81 squares) chance that you will hit a mine and lose.
Intermediate - The player is presented with a 16x16 grid in which 40 mines are concealed. On any turn after the first turn, if you pick a random square, there is a 1 in 6.4 (40 mines/256 squares) chance that you will hit a mine and lose.
Expert - The player is presented with a 16x30 grid in which 99 mines are concealed. On any turn after the first turn, if you pick a random square, there is a 1 in 4.8 (99 mines/480 squares) chance that you will hit a mine and lose.


## Webworker

[Web Workers](https://github.com/virgs/mancala/blob/main/src/engine/ai/AiWorker.ts) are a simple means for web content to run scripts in background threads. The worker thread can perform tasks without interfering with the user interface. Once created, a worker can send messages to the JavaScript code that created it by posting messages to an event handler specified by that code (and vice versa).  
This is where the AI CPU heavier usage takes place.

## Assemblyscript

## AI

It uses [Minimax](https://github.com/virgs/mancala/blob/main/src/engine/ai/Minimax.ts) as artificial intelligence.

Minmax (sometimes Minimax, MM or saddle point) is a decision rule used in artificial intelligence, decision theory, game theory, statistics, and philosophy for minimizing the possible loss for a worst case (maximum loss) scenario. When dealing with gains, it is referred to as "maximin" – to maximize the minimum gain. Originally formulated for several-player zero-sum game theory, covering both the cases where players take alternate moves and those where they make simultaneous moves, it has also been extended to more complex games and to general decision-making in the presence of uncertainty.

### Knowledge representation

#### Propositions

#### Iinference

[Algorithmic Approaches to Playing Minesweeper](https://cs50.harvard.edu/ai/2023/projects/1/minesweeper/)
[Who wrote it?](http://honors.cs.umd.edu/reports/minesweeper.pdf)

[Human statistics](https://minesweeper.online/statistics)


## Results



### Project Setup

```sh
npm install
```

#### Compile and Hot-Reload for Development

```sh
npm run dev
```

#### Type-Check, Compile and Minify for Production

```sh
npm run build
```

#### Format

```sh
npm run format
```
