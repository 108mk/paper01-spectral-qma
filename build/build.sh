#!/bin/sh
# Build main.pdf from the repository root. Used for local builds and by the GitHub workflow
# (.github/workflows/build-pdf.yml), so both compile the same way.
# build/ is searched after the TeX installation: build/bbm.sty, an empty stand-in for the
# `bbm` package (loaded by the preamble, never used), only fills in where TeX Live lacks it.
# max_print_line keeps log lines unwrapped so the workflow can read errors and warnings.
cd "$(dirname "$0")/.." || exit 1
export TEXINPUTS=":./build//" max_print_line=1000
exec latexmk -pdf -interaction=nonstopmode -file-line-error main.tex
