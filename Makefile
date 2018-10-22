# Makefile for the OpenMP Offloading design document in LaTeX format.

all: MainDocument.pdf

.PHONY: clean all

TEXFILES=Definitions.tex \
         LibomptargetInterface.tex \
         DeviceRTLInterface.tex	\
         MainDocument.tex \
         GenerationOfFatBinaries.tex \
         ModelOfUse.tex \
         GoalOfDesign.tex \
         NativeRuntime.tex \
         OpenMPOffloadingOverview.tex

MainDocument.pdf: $(TEXFILES) Makefile
	-pdflatex -interaction=batchmode -draftmode -file-line-error MainDocument.tex
	-pdflatex -interaction=batchmode -file-line-error MainDocument.tex

clean:
	rm -f MainDocument.pdf MainDocument.aux MainDocument.log
