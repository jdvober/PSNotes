    pdflatex -synctex=1 -interaction=nonstopmode "%1"
    biber "%2"
    pdflatex -synctex=1 -interaction=nonstopmode "%1"
    pdflatex -synctex=1 -interaction=nonstopmode "%1"
