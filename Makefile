TEX=pdflatex
MAIN=src/main.tex
OUTDIR=build

all: $(OUTDIR)/book.pdf

$(OUTDIR)/book.pdf: $(MAIN)
    mkdir -p $(OUTDIR)
    $(TEX) -output-directory=$(OUTDIR) $(MAIN)
    $(TEX) -output-directory=$(OUTDIR) $(MAIN) # Run twice to resolve references

clean:
    rm -rf $(OUTDIR)/*
