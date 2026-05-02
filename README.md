# Zinc

Zinc is a simple programming language and compiler inspired heavily by C and C++.

## Overview

Zinc aims to provide a familiar, minimal syntax for systems programming with modern tooling.

## Features

- C-like syntax and control flow
- Static & Dynamic typing
- Simple compiler pipeline
- C++-style classes with automatic allocation
- And much more...

Read the [wiki](https://github.com/Warrik2020/Zinc/wiki) for more info!

## Installation

You need to have the GCC C++ compiler (for now)

```bash
git clone https://github.com/Warrik2020/Zinc.git
cd Zinc
sudo make install
```

## Usage

```
znc <file.zn> [--compile] [--emit-asm] [-S out.s] [-o out] [--dump-tokens]
./<output_file>
```

There's also a vscode extension for code highligting with Zinc!
https://marketplace.visualstudio.com/items?itemName=warrick.zinc

## Example

Examples are in the `examples` folder.
