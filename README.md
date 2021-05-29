# Profane Geometry

I'm making (attempting) a Eurorack Module.

## What is it?

It's gonna be an oscillator builder/mixer based on a digitally-controlled Triangle Core VCO I found in a [research paper](https://www.researchgate.net/figure/Voltage-controlled-triangle-signal-generator-circuit_fig1_276412272).
It will be controlled by the atsamd21 or atsamd11 (depending on what I end up needing and what is in stock) family of MCUs and have firmware written in Rust!

## Dang aren't you like a web developer?

Yes.
I've only barely figured out the building blocks of some of this stuff, and my knowledge extends to pretty much exactly what I've built so far.
There are almost certainly issues with it.
The OSHW community is great though and people who publish the source/schematics for their Eurorack modules have been a massive, _massive_ help.

## Dang isn't there like a global parts shortage.

Yes.
It's annoying.

## Dang can I make one of these?

Sure.
Probably it will be bad.

## What's in this repo?

- The `./profane_geometry` directory houses the KiCad project for the oscillator board
- The `./profane_geometry_jackboard` directory houses the KiCad project for the jackboard
- The `./firmare` directory contains some testing firmare designed for the first iteration of the jackboard, which allows for an Adafruit Feather M0 to be attached with breadboard-pitch pin sockets
