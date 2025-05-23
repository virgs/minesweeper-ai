# Minesweeper-ai

This is a long dream project of *mine* (ba dum tss) coming true and you can [play it here](https://virgs.github.io/minesweeper-ai)

![Screenshot](./screenshot.png)


Yeap. As you might think, this is yet another game development project.
If you haven't done it yet, I highly recommend checking the other ones I have on GitHub:

- [Pacman](https://github.com/virgs/pacman)
- [Sudoku](https://github.com/virgs/sudoku)
- [Flappy Bird AI](https://github.com/virgs/flappy-bird-ai)
- [2048 AI](https://github.com/virgs/2048-ai)
- [Rubik's Cubes AI](https://github.com/virgs/rubiks-cubes-ai)
- [Mancala](https://github.com/virgs/mancala)
- [Tetris](https://github.com/virgs/tetris)
- [Navigator's Gamble](https://github.com/virgs/navigators-gamble)

----

This implementation provides you 4 AI actions:

1. *Hint*: tells you all inferable information given the current board configuration.
2. *Make one move*: reveal every **known** safe cell and flag every **known** mine given the current board configuration.
3. *Keep playing until no guess is needed*: it essentially keeps *making one move* repeatedly. It makes a move, then based on the updated board configuration, makes new inferences, makes another move, and so on...
4. *Guess*: makes a [guess](#guesses). Since it's a guess, and it's based on luck, you can lose by pressing it.

## Report

I believe I can say Minesweeper is the PC game I played the most throughout my life.
If you were a kid in the '90s, the same way I was, you would get it and agree with me when I say that our gaming options were not too sophisticated and our lack of alternatives compared to nowadays didn't help either.  

With that being said and adding to the equation that I've always been into game development, I had to code several versions of my minesweeper, including the [octagon/square pattern](https://github.com/virgs/octoQuadMineSweeper) (you can watch it [here](https://www.youtube.com/watch?v=PNmADfgnJjg)) and other long-lost ones.  

Given my latest obsession with gaming artificial intelligence ([flappy-bird](https://virgs.github.io/flappy-bird-ai/?mutationRate=0.01&populationPerGeneration=1500&relativeSelectedPopulationPerGeneration=0.01&qBirdsNumber=100), [mancala](https://virgs.github.io/mancala/), [rubiks-cubes](https://virgs.github.io/rubiks-cubes-ai/?cube=0&methods=&moves=)) projects, it was just a matter of time until I came up with an AI for minesweeper.  

I've been thinking about it for a long time. I'd say that at least 15 years. Thought about multiple strategies to solve it. From **fuzzy logic** to **neural networks**. None was good enough and gave me the appeal to make me want to spend some time trying them.  

That was my reality until I found this one from [Harvard's *Introduction to Artificial Intelligence with Python*](https://cs50.harvard.edu/ai/2023/projects/1/minesweeper). More information about this approach [below](#artificial-intelligence). It got me instantly fascinated both by the simplicity and elegance that the solution has shown.  

I got the sparkle I needed.  

With no further ado, I present to you my approach of an **Artificial Intelligence** agent to play the classical version of **Minesweeper**.

## Goals

1. [**To write an artificial intelligence agent that can play any of the minesweeper better than I do**](#artificial-intelligence). Ideally, it would have to be better than I. Modesty aside, this wouldn't be an easy task, since, as I mentioned earlier, I've been practicing it through most of my life. There is no way to ensure that (not that I'm THAT good), but this is something hard to measure if you put the time factor aside (not fair to compare the time to solve a board between a human and a machine, right?). So, I slightly changed the goal to be: **have a better win rate than the numbers found on [minesweeper.online](https://minesweeper.online/statistics)**. Check the [results](#results) at the end to verify if this goal was achieved.

As I always do, a lot of different side goals came with this project. Among them:

2. [Study webworkers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Using_web_workers)
3. [Study WebAssembly](https://webassembly.org/) with [AssemblyScript](https://www.assemblyscript.org/)
4. [Study Pinia 🍍](https://pinia.vuejs.org/)
5. Last but not least: **to have fun**. Yay!

## Minesweeper

If you are not familiar with the game concept, here's a quick overview of how it works.  
Minesweeper is a puzzle game that consists of a grid of cells, where some cells contain hidden “mines”. Clicking on a cell that contains a mine detonates the mine, and causes the user to lose the game. Clicking on a “safe” cell (i.e., a cell that does not contain a mine) reveals a number that indicates how many neighboring cells – where a neighbor is a cell that is one square to the left, right, up, down, or diagonal from the given cell – contain a mine.

Using the right button click, you can flag a cell to prevent any accidental click, and, enable you to "chord". Chording is the action of clicking on a revealed cell indicating X and that has exactly X neighboring flagged cells. By doing this, you automatically reveal all the cell's neighbors. If you've flagged a neighboring safe cell, chording will make you lose the game.

A last disclaimer is needed because it's not unusual to see a minesweeper version that doesn't implement this behavior: the first cell ever clicked in a game will always open a clear area. It and its neighbors cannot have any mine. It makes it impossible to lose in the first click (ultimately always a guess) and maximizes the chance to provide you with enough information to stop guessing at the beginning.

### Artificial Intelligence

How does the AI get to know what's a safe, and what's a mine cell without any cheating? Well, my friend, it is all about two things: knowledge representation and inferences.

#### Knowledge Representation

Consider this 4x4 board configuration where cells have been labeled with an identifying letter for the sake of discussion:

| (A) 3 | (B)   | (C)   2 |(D)   |
|---| ---|---|---|
| **(E)** | **(F)** | **(G)** | **(H)**|
| **(I) 3** | **(J)** | **(K)** | **(L)**|
| **(M) 1** | **(N)** | **(O)** | **(P) 0**|

There are 5 revealed cells: **A**, **C**, **I**, **M** and **P**.
Given this information, a logical player could conclude that there must be mines in the **B**, **E**, **F** cells and that there is no mine in the **D**, **G**, **H**, **K**, **L**, and **O** cell, for only in that case would the numerical labels on each of the other cells be accurate.

But how would a machine infer it? One way we could represent an AI’s knowledge about a Minesweeper game is by making each cell a propositional variable that is true if the cell contains a mine, and false otherwise.

What information does the AI have access to? Well, the AI would know every time a safe cell is clicked on and would get to see the number for that cell. We can represent the given board configuration using the **propositional logic notation** [explained here](https://cs50.harvard.edu/ai/2023/projects/1/minesweeper/).

In short, every logical sentence in this representation has two parts: a set of cells on the board that are involved in the sentence, and a number count, representing the count of how many of those cells are mines.

Why is this a useful representation? In part, it lends itself well to certain types of inference.

Thus, this propositional notation allows us to represent the 5 revealed cells we have with these 5 propositions:

1. **A** cell gives us {B, E, F} = 3 mines
1. **C** cell gives us {B, D, F, G, H} = 2 mines
1. **I** cell gives us {E, F, J, N} = 3 mines
1. **M** cell gives us {J, N} = 1 mine
1. **P** cell gives us {K, L, O} = 0 mines

The first logical sentence says that out of cells **B**, **E**, and **F**, exactly 3 of them are mines. And the same applies to the remaining sentences.

#### Inferences

Below we'll see how we can use this method of representing knowledge, to write an AI agent that can gather knowledge about the Minesweeper board, and hopefully win most of the games we play.

##### 1. All-Safe and All-Mine Inference

Considering the propositions mentioned previoulsy, we can intuitively infer from the 1st sentence ({B, E, F} = 3) that all **B**, **E**, and **F** must be mines. More generally, we can infer that any time the number of cells is equal to the count, all of that sentence’s cells must be mines.

Using the knowledge from the 5th sentence ({K, L, O} = 0), we can intuitively infer that all **K**, **L**, and **O** must be safe. By extension, any time we have a sentence whose count is 0, we know that all of that sentence’s cells must be safe.

In general, we’ll only want our sentences to be about cells that are not yet known to be either safe or mines. This means that, once we know whether a cell is a mine or not, we can update our sentences to simplify them and potentially draw new conclusions.

Now that we inferred that **B**, **E**, and **F** are mines and **K**, **L**, and **O** are safe, we can update the unsatisfied sentences. Worth noting that sentences that have inferred mines in them have to decrease the mine number as well.

2. **C** cell gives us {D, G, H} = 0 mines
3. **I** cell gives us {J, N} = 1 mine
4. **M** cell gives us {J, N} = 1 mine

Now the 2nd sentence allows us to infer that **D**, **G**, and **H** are not mine and no other sentence can be created.

##### 2. Subset Inference

Consider just these two sentences from a hypothetical board configuration.

1. {A, B, C} = 1
2. {A, B, C, D, E} = 2

Logically, we could then infer a new piece of knowledge, that {D, E} = 1. After all, if two of **A**, **B**, **C**, **D**, and **E** are mines, and only one of **A**, **B**, and **C** are mines, then it stands to reason that exactly one of **D** and **E** must be the other mine.

    1. {A, B, C} = 1
    2. {A, B, C, D, E} = 2
    subtracting 1. from 2.
    3. {D, E} = 1

More generally, any time we have two sentences:

    set1 = count1
    set2 = count2

where set1 is a subset of set2, then we can construct the new sentence:

    set2 - set1 = count2 - count1

There’s one final quick type of inference we can do.

##### 3. Inequality Difference Inference

Consider the sentences below:

1. {B, C, D, E} = 3
2. {A, B, C} = 1

Note that their sets are not subset/superset of each other, but they do overlap {B, C}. Since this is an overlap, it's a subset of both sets. If this is a subset from the first proposition, it's fair to say that it's a proposition that has **at most** (an inequality) 1 mine:

3. {B, C} ≤ 1.

To demonstrate that, we can suppose that **A** is a mine, in that case, {B, C} = 0. Supposing the opposite now, **A** is not a mine, {B, C} = 1. Given that being a mine or not being mine are the only two valid values for **A**, we can say that {B, C} is either equal to 0 or equal to 1. Thus: {B, C} ≤ 1.  

As previously said {B, C} is also a subset of the 2nd set, and combining this information with the [subset inference](#2-subset-inference) we just learned, we can infer a new piece of knowledge:

    1. {B, C, D, E} = 3
    3. {B, C} ≤ 1
    Applying subset inference 1. - 3. and inequality subtractions
    4. {D, E} ≥ 2

It may deserve another paragraph to demonstrate that. Observe that {D, E} effectively is the difference-set {B, C, D, E} - {A, B, C} = {D, E}. Since we proved {B, C} is either equal to 0 or equal to 1, and we know {B, C, D, E} = 3. We can replace a piece of the former with the latter. Assuming {B, C} = 1, we would get {D, E} = 2. Supposing now that {B, C} = 0, we would have {D, E} = 3. *Which is a contradiction,* once one cell can only have at most one mine.  

So, according to the *Reductio ad absurdum*, we can infer {D, E} = 2 and {B, C} = 1. Therefore, **D** and **E** are mines. Lastly, we subtract {B, C} = 1 from the 2nd proposition ({A, B, C} = 1) and get {A} = 0. Thus, **A** is a safe cell.

More generally, any time we have two sentences:

    set1 = count1
    set2 = count2

where count1 - count2 is equal to the number of cells the difference-set set1 - set2 has, then we can infer that every cell in the difference-set is a mine.

## Results

If you didn't skip the goals section or weren't getting distracted playing a game like, let's say, minesweeper, you'll remember that the main goal was to have a better ratio win rate than the numbers found [minesweeper.online](https://minesweeper.online/statistics).

### Methodology

To generate the reports and be able to determine whether these numbers are good, I decided to compare them against the stats on [minesweeper.online/statistics](https://minesweeper.online/statistics). I have no idea of how reliable they are and one can say these numbers take beginners and speed-solvers into consideration. Honestly, I don't care. It's better than nothing.

To compare against those stats numbers, I made the AI play the three standard difficulty levels:

- **Beginner:** 9x9 grid, 10 mines and ≅0.123 mines density.
- **Intermediate:** 16x16 grid, 40 mines and ≅0.156 mines density.
- **Expert:** 16x30 grid, 99 mines and ≅0.206 mines density.

To generate the AI win ratio, the AI plays 2000 times every level. It plays as safe as possible until no safe move is possible without any new information. When it finally runs out of safe moves, it guesses. And before going any further on results, the guessing factor must be addressed.

### Guesses

Unfortunately, given the very nature of the game, guesses are often required and make part of the game. So frequent that it's pretty much impossible to play one expert level game without any guessing at all. Eventually the player will bepresented with too little information to make a  concrete deduction. One can say it's a bad game design decision to make the luck factor so important. And I second that, even though I've played it so many times. But what does this one have to say about games such as Monopoly, rock-paper-scissor, and all casino games?

I really didn't want to get too deep into guessing strategies. Even though they are about minimizing the luck factor, they're still about luck.

In order to decide which cell it guesses, the AI iterates over every cell of all currently known propositions and gathers this information about these cells:

1. Number of propositions the cell appears
2. The mine/cell ratio average this cell has.

Consider these two propositions:

1. {A, B, C, D} = 3
2. {C, D, E, F} = 2

Since the 1st proposition has 3 mines and 4 cells, it has a .75 mine/cell ratio. The second one has .5 ratio.  
Gathering the information the AI gets every time it has to guess, the AI comes up with:

- A: 1 appearance, .75 / 1 = .75 mine/cell ratio average
- B: 1 appearance, .75 / 1 = .75 mine/cell ratio average
- C: 2 appearance, (.75 + .5) / 2 = 0.625 mine/cell ratio average
- D: 2 appearance, (.75 + .5) / 2 = 0.625 mine/cell ratio average
- E: 1 appearance, .5 / 1 = .5 mine/cell ratio average
- F: 1 appearance, .5 / 1 = .5 mine/cell ratio average

Once this is done, it gets a cell with the **lowest mine/cell ratio average**. In this case, the AI would pick either **E** or **F**.

To be completely honest, I tried tweaking a few of the guessing strategies, but all of them had none to little effect on the results. Most of the results difference were not significant enough and even smaller than the standard deviation. So I settled with the one I just described.

### Performance Analysis

| Level | [Minesweeper.online](https://minesweeper.online/statistics) | AI |
|--- | --- | --- |
| Beginner | 48% | [93.05%](./reports/beginner-1702931793457.json) |
| Intermediate | 23% | [69.85%](./reports/intermediate-1702931392867.json) |
| Expert | 2.7% | [29.55%](./reports/expert-1702931496138.json) |

You can check these values yourself [here](./reports/) and suggest better approaches by coding them yourself.

## Code It Yourself

If you want to, you can assemble your [proposition inferences](./src/as/assembly/PropositionsSolver.ts) or [guess strategy](./src/as/assembly/GuessMaker.ts). To do so, you'd have to rewrite a really small portion of the code and put your ideas instead.

### Project Setup

```sh
npm install
```

#### Compile and Hot-Reload for Development

```sh
npm run dev
```

#### Type-Check, Compile, and Minify for Production

```sh
npm run build
```

#### Format

```sh
npm run format
```

## Bibliography

1. [Algorithmic Approaches to Playing Minesweeper](https://cs50.harvard.edu/ai/2023/projects/1/minesweeper/)
1. [Algorithms for Minesweeper Game Grid Generation](https://dspace.cvut.cz/bitstream/handle/10467/61624/F3-BP-2016-Cicvarek-Jan-Algorithms%20for%20Minesweeper%20Game%20Grid%20Generation.pdf)
1. [Becerra, David J. 2015. Algorithmic Approaches to Playing Minesweeper](https://dash.harvard.edu/bitstream/handle/1/14398552/BECERRA-SENIORTHESIS-2015.pdf)
1. [A solver of single-agent stochastic puzzle: A case study with Minesweeper](https://www.sciencedirect.com/science/article/pii/S0950705122002842)
1. [Unknown author](http://honors.cs.umd.edu/reports/minesweeper.pdf)
1. [nothings.org](https://minesweeper.online/statistics)
1. [minesweeper.online](https://nothings.org/games/minesweeper/)
1. [minesweepergame.com](https://minesweepergame.com/strategy/guessing.php)
