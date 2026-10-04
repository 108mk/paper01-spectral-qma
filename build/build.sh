#!/bin/sh
# Build main.pdf from the repository root. build/bbm.sty is an empty stand-in for the
# `bbm` package, which the preamble loads but the document never uses.
cd "$(dirname "$0")/.." && TEXINPUTS="./build//:" latexmk -pdf -interaction=nonstopmode main.tex
