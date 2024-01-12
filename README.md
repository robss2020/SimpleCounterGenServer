# SimpleCounterGenServer

## Installation

SimpleCounterGenServer is simple example of using GenServers and supervisors in Elixir. It's a scaffold for experimenting with and learning about these concepts.
It has no special functionality and is intended solely for educational purposes.  Clone it, run it, add to it however you want.

## Overview

The application implements a simple counter GenServer. It includes simple functions to increment, decrement, and retrieve the current value of a counter.

It is demonstrates the basic structure and operation of GenServers and how they can be integrated into an Elixir application's supervision tree.

## Getting Started

To get started with SimpleCounterGenServer, clone this repository via

`git clone https://github.com/robss2020/SimpleCounterGenServer`

and navigate into the project directory. Then, run the application using an Elixir interactive shell:

`iex -S mix`

## Example Uses

Increment the counter:

`CounterApp.Counter.increment()`

Get the value:

`CounterApp.Counter.value()`

Decrement the counter:

`CounterApp.Counter.decrement()`

## Add a function of your own

Once you've run it, add your own functions.  Have fun.

## License
Hereby released in the public domain.