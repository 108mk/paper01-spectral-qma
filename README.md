# paper01-spectral-qma
To improve paper01 with agentic-AI

## Reading the PDF
GitHub compiles the paper after every push to `main` and publishes it on the `pdf` branch:
**[paper01-spectral-qma.pdf](https://github.com/108mk/paper01-spectral-qma/blob/pdf/paper01-spectral-qma.pdf)**. GitHub's viewer shows it inline; links inside the PDF work in the downloaded copy. Build status and logs: [Actions → Build PDF](https://github.com/108mk/paper01-spectral-qma/actions/workflows/build-pdf.yml). Pushes to other branches are built too, and their PDF is attached to the run for 14 days.

## Layout
- `main.tex`, `commands.tex`, `references.bib`, `pics/` — the manuscript *Spectral Characterization of QMA* (Kumar & Palem). The first source commit is the draft of 10 September 2026 exactly as received; every later commit is one converged change from the renovation sessions.
- `build/build.sh` — builds `main.pdf` with latexmk, locally and on GitHub (`build/bbm.sty` stands in for the unused `bbm` package where the TeX installation lacks it).
- `.github/workflows/build-pdf.yml` — the GitHub build: TeX Live in a container runs `build/build.sh`, then the PDF is published to the `pdf` branch.
