# Base Paper Template

This repository is intended to host a simple base LaTeX temaplate for scientific templates. The name of the .tex and .bib is "main", this was done for simplicity reasons, you can change it later to anything you want. Keep in mind that if you change the name you need to change the name in the Makefile and in the .tex for the .bib as well.

You can fork this repo and from then ... modify it to your needs. My intention is not to create the super ultimate template for all case scenarios. The intention is to have something robust enough for you to start writing as fast as you can ... when things get messy like when you start doing testing, simulations, R operations, whatever you are doing ... then you will dedicate some time to adjust your files to your needs, assuming you want to automate it. But I've seen that most of the time you need as fast as you can the basic structure to start writing the main idea before you get into heavy stuff and that is why this repo exists.

## Prerequisites

* You need to have LaTeX installed (of course!).
* Install Ghostscript. Quick tutorial ... for mac (you need Homebrew) "brew install gs" and for debian (you need aptitude) "apt-get install gs". More info in http://www.ghostscript.com/doc/9.19/Install.htm. You DO NOT NEED to install Ghostscript, but this is used to compress the pdf for better handling for mails or quick sending over Skype or something like that, if you don't care about the size, just comment out line 16 of the Makefile.

## Makefile

There is a Makefile for faster and easier compilation. The default configuration is to use pdflatex for compiling the .tex files and bibtex for the .bib files. This two configurations can be seen on line 1 and 2 of the Makefile. On line 4 you have the name of the paper, now is set to "main", if you need to change it to "theBestPaperEver", you will need to change the line 4 to this name.

Then you have the clean and all targets of the Makefile. Clean will clean (as you might have expected) and all will compile one time, compile bibliography, compile two times again and finally compress the resulting pdf. Uncompressed and compress pdfs will be outputed. If you don't want to compress your pdf you can comment out line 16 of the Makefile.

## main.tex

The basic structure is a main.tex file using the IEEE double column LaTeX template, which has two approaches, either you use separated files on separated folders for each section or you have everything in the main.tex file. The reason to use folders is just to be organized and focus on a single section at a time, you can deleted them and work everything on the main.tex. Or work with different files but not different folders, whatever works for you :). Then you have the main.bib which is for bibliography.

## Other approaches

You can check this other approaches in case you need:

* https://github.com/cpfaff/Open-Science-Paper
* https://github.com/vancegroup/asme-latex
* https://github.com/smarr/perf-latex-paper