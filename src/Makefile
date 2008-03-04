# This is a makefile that builds the kor morphological parser
# *****************************************************************
# This is a dummy file. kor refers to the name of the language, xxx to the 
# ISO code of the language, for use in file names.

# This is a preliminary file that builds a kor parser based upon
# xfst and not twolc.

#XFST = xfst -utf8
#LEXC = lexc -utf8

# Here we build a converter from KK to SWF. Not done.

orth-kor.fst: ../bin/orth-kor.fst
../bin/orth-kor.fst: orth-kor.xfst ikor.fst
	@echo
	@echo "*** Building orth-kor.fst ***" ;
	@echo
	@printf "source $< \n\
	save stack $@ \n\
	quit \n" > ../tmp/orth-script
	$(XFST) < ../tmp/orth-script
	@rm -f ../tmp/orth-script

# This is a good start for a Makefile for the forthcoming transducer.
# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon kor.save

ikor.fst: ../bin/ikor.fst
../bin/ikor.fst: ../bin/kor.fst
	@echo
	@echo "*** Building the inverse ikor.fst ***"
	@echo
	@printf "load ../bin/kor.save \n\
	invert net \n\
	save stack ../bin/ikor.fst \n\
	quit \n" > ../../tmp/ikor-fst-script
	@xfst < ../../tmp/ikor-fst-script
	@rm -f ../../tmp/ikor-fst-script


# This goal is to build the final analyser. It depends on all the files.

kor.fst: ../bin/kor.fst
../bin/kor.fst: ../bin/kor.save ../bin/caseconv.fst
	@echo
	@echo "*** Building kor.fst ***" ;
	@echo
	@printf "read regex [[@\"../bin/kor.save\"] .o. \
	[@\"../bin/caseconv.fst\"]] ; \n\
	save stack ../bin/kor.fst \n\
	quit \n" > ../../tmp/kor-fst-script
	@xfst < ../../tmp/kor-fst-script
	@rm -f ../../tmp/kor-fst-script


# The second goal is to build the caseconv.fst file
# This goal depends on case.regex

caseconv.fst: ../bin/caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > ../../tmp/caseconv-script
	@xfst < ../../tmp/caseconv-script
	@rm -f ../../tmp/caseconv-script


# Another goal is to build a preprocessor.This goal depends on tok.txt

tok.fst: ../bin/tok.fst
../bin/tok.fst: tok.txt
	@echo
	@echo "*** Building the tokenizer tok.fst ***" ;
	@echo
	@printf "source tok.txt \n\
	save stack ../bin/tok.fst \n\
	quit \n" > ../../tmp/tok-script
	@xfst < ../../tmp/tok-script
	@rm -f ../../tmp/tok-script


kor.save: ../bin/kor.save
../bin/kor.save: ../bin/xfst-kor.bin ../bin/kor-lex.save
	@echo
	@echo "*** Building the parser kor.save ***"
	@echo
	@printf "read regex [[@\"../bin/kor-lex.save\"] .o. \
	[@\"../bin/xfst-kor.bin\"]] ; \n\
	save stack ../bin/kor.save \n\
	quit \n" > ../../tmp/kor-save-script
	@xfst < ../../tmp/kor-save-script
	@rm -f ../../tmp/kor-save-script

# The first goal is to build kor-lex.save
# This goal depends on a bunch of lexicon files

kor-lex.save: ../bin/kor-lex.save
../bin/kor-lex.save: kor-lex.txt noun-kor-morph.txt noun-kor-lex.txt 
#        adj-kor-lex.txt \
#	adv-kor-lex.txt verb-kor-lex.txt pron-kor-lex.txt punct-kor-lex.txt \
#	pp-kor-lex.txt
	@echo
	@echo "*** Building kor-lex.save ***" ;
	@echo
	printf "compile-source kor-lex.txt noun-kor-morph.txt noun-kor-lex.txt \n\
#	adj-kor-lex.txt verb-kor-lex.txt verb-kor-morph.txt pron-kor-lex.txt \
#	adv-kor-lex.txt pp-kor-lex.txt punct-kor-lex.txt \n\
	save-source ../bin/kor-lex.save \n\
	quit \n" > ../../tmp/kor-lex-save-script
	@lexc < ../../tmp/kor-lex-save-script
	rm -f ../../tmp/kor-lex-save-script

# The second goal is to build xfst-kor.bin
# This goal depends on xfst-kor.txt

xfst-kor.bin: ../bin/xfst-kor.bin
../bin/xfst-kor.bin: xfst-kor.txt
	@echo
	@echo "*** Building xfst-kor.bin ***" ;
	@echo
	@printf "source xfst-kor.txt \n\
	save stack ../bin/xfst-kor.bin \n\
	quit \n" > ../../tmp/xfst-kor-script
	@xfst -utf8 < ../../tmp/xfst-kor-script
	@rm -f ../../tmp/xfst-kor-script

clean:
	@rm -f ../bin/*.bin ../bin/*.fst ../bin/*.save


