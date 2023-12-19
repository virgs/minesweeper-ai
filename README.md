# minesweeper-ai

![Screenshot](./Screenshot.png)

This is a long dream project of *mine* (ba dum tss) coming true and you can [play it here](https://virgs.github.io/mancala/)

## Report

I believe I can say minesweeper is the PC game I played the most throughout my life. Specially during adolescence.
If you were a kid in the 90s, the same way I was, I think you will agree with me when I say that our gaming options were not too sophisticated and our lack of options compared to nowadays didn't help either.  

With that being said and adding to the equation that I've always been into game development, it goes without saying that I had to code several different versions of my own minesweeper, including the [octagon/square pattern](https://github.com/virgs/octoQuadMineSweeper) (you can watch it [here](https://www.youtube.com/watch?v=PNmADfgnJjg)) and other ones long lost.  

Given my latest obsession with gaming artificial intelligence projects, it was just a matter of time until I come up with an AI for minesweeper.  

I've been thinkg about it for a really long time. I'd say that at least 15 years. Thought about several different strategies to solve it. From **fuzzy logic** to **neural networks**. None was good enough to actually make me want to spend some time to try them.  

That was my reality until I found this one from [Harvard's **Introduction to Artificial Intelligence with Python**](https://cs50.harvard.edu/ai/2023/projects/1/minesweeper). More information about this approach [below](#artificial-intelligence-strategy). It got me instantly fascinated both by the simplicity and elegance that the solution has shown.  

I got what I needed.  

With no further ado, I present you my own approach of an **Artificial Intelligence** agent to play the classical version of **Minesweeper**.

## Goals

1. [To write an agent that can play any the classical minesweeper better than I do](#artificial-intelligence-strategy). Modesty aside, this is no easy task since, as I mentioned earlier, I've been practicing it through most of my life. Since there would be no way to ensure that (not because I'm THAT good), but this is something really hard to measure if you put the time factor aside. Not really fair compare the time to solve a board between a human and a machine, right? So I slightley changed the goal to be: **find all mine and not-mine cells given a current board configuration**.

As I always do, a lot of different goals came with this project.

2. [Study webworkers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Using_web_workers)
3. [Study webassembly]
4. [Study pinia]
5. Last but not least important. To have fun. Yay.


- [Study minesweeper AI](https://en.wikipedia.org/wiki/Mancala)
- [Study webworkers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Using_web_workers)
- [Study webassembly](https://en.wikipedia.org/wiki/Minimax)
- [Study assembly script](https://en.wikipedia.org/wiki/Minimax)
- Have fun. Yay.
- 
[Web Workers](https://github.com/virgs/mancala/blob/main/src/engine/ai/AiWorker.ts) are a simple means for web content to run scripts in background threads. The worker thread can perform tasks without interfering with the user interface. Once created, a worker can send messages to the JavaScript code that created it by posting messages to an event handler specified by that code (and vice versa).  
This is where the AI CPU heavier usage takes place.

## Minesweeper

## Artificial Intelligence Strategy

 I really didn't want to get too deep into guessing strategies. Even though they are about minimizing the luck factor, they're still about luck. So the AI has to play as safe as possible until no safe move is possible without any new information. I will get more into that [below](#artificial-intelligence-strategy)


### First click is a clear rule.
### How to chord.

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

#### Inference

[Algorithmic Approaches to Playing Minesweeper](https://cs50.harvard.edu/ai/2023/projects/1/minesweeper/)
[Who wrote it?](http://honors.cs.umd.edu/reports/minesweeper.pdf)

[Human statistics](https://minesweeper.online/statistics)


## Results


## Code it yourself

If you want to, you can assemble your own guess strategy. To do so, you'd have to rewrite a really small potion of the code and put your ideas instead (link to the GuessMaker class).

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
