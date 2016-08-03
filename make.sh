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

function references() {
    bibtex ${PROJET}
}

function display() {
    #PID=$(ps | egrep -i acrobat | sed -e "s/^ *//" -e "s/ .*$//")
    #kill -15 $PID
    #cp ${PROJET}.pdf ${PROJET}_dp.pdf
    #"/c/Program Files (x86)/Adobe/Acrobat Reader DC/Reader/acroRD32.exe" ${PROJET}_dp.pdf &
    "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" rapport.pdf
}

clean ; pdf && glossary && references && pdf && pdf && clean && display
