#!/bin/bash

PROJET=rapport
ARGS=-shell-escape
#ARGS=-shell-escape -interaction=batchmode

function clean() {
    rm -f *~ *.backup *.aux *.toc *.blg *.log *.out *.bbl *.dvi *.nav *.pyg *.snm *.lof *.acn *.acr *.alg *.glg *.glo *.gls *.ist
}

function pdf() {
    pdflatex ${ARGS} ${PROJET}
}

function glossary() {
    makeglossaries ${PROJET}
}

clean ; pdf && glossary && pdf && pdf && clean
