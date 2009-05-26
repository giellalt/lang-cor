# This is a makefile that builds the cor morphological parser
# *****************************************************************
# This is a dummy file. cor refers to the name of the language, xxx to the 
# ISO code of the language, for use in file names.

# This is a preliminary file that builds a cor parser based upon
# xfst and not twolc.

XFST = xfst #-utf8
CFST = xfst #-utf8
LEXC = lexc #-utf8

ifeq (victorio.uit.no, $(shell hostname))
XFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
CFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
LEXC = /opt/sami/xerox/bin/lexc -utf8
endif



SRCS =  cor-lex.txt \
	adv-cor-lex.txt \
	noun-cor-lex.txt \
	noun-cor-morph.txt \
	propernoun-cor-lex.txt \
	propernoun-cor-morph.txt \
	pp-cor-lex.txt \
	cc-cor-lex.txt \
	adj-cor-lex.txt \
	adj-cor-morph.txt \
	verb-cor-lex.txt \
	verb-cor-morph.txt \
	cs-cor-lex.txt \
	punct-cor-lex.txt \
	pron-cor-lex.txt 


# Here we build a converter from KK to SWF. Not done.

orth-cor.fst: ../bin/orth-cor.fst
../bin/orth-cor.fst: orth-cor.xfst ../bin/icor.fst \
	../bin/tok.fst #../bin/cor-dis.bin
	@echo
	@echo "*** Building orth-cor.fst ***" ;
	@echo
	@printf "source $< \n\
	save stack $@ \n\
	quit \n" > ../tmp/orth-script
	$(XFST) < ../tmp/orth-script
	@rm -f ../tmp/orth-script


# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon cor.save

icor.fst: ../bin/icor.fst
../bin/icor.fst: ../bin/cor.fst
	@echo
	@echo "*** Building the inverse icor.fst ***"
	@echo
	@printf "load ../bin/cor.save \n\
	invert net \n\
	save stack ../bin/icor.fst \n\
	quit \n" > ../../tmp/icor-fst-script
	$(XFST) < ../../tmp/icor-fst-script
	@rm -f ../../tmp/icor-fst-script


# This goal is to build the final analyser. It depends on all the files.

cor.fst: ../bin/cor.fst
../bin/cor.fst: ../bin/cor.save ../bin/caseconv.fst ../bin/spellrelax.fst
	@echo
	@echo "*** Building cor.fst ***" ;
	@echo
	@printf "read regex  [[@\"../bin/cor.save\"] .o. [@\"../bin/caseconv.fst\" .o. \
	@\"../bin/spellrelax.fst\"]] ; \n\
	save stack ../bin/cor.fst \n\
	quit \n" > ../../tmp/cor-fst-script
	$(XFST) < ../../tmp/cor-fst-script
	@rm -f ../../tmp/cor-fst-script


# Let us just make a binary disambiguator
# It can be used instead of the source file.

dis-bin: ../bin/cor-dis.bin
../bin/cor-dis.bin: cor-dis.rle
	@echo
	@echo "*** Building a binary disambiguator cor-dis.bin ***" ;
	@echo
	@vislcg3 --grammar cor-dis.rle --grammar-only --grammar-bin ../bin/cor-dis.bin -C UTF-8



# This goal is to allow for the c system, ec.

spellrelax.fst: ../bin/spellrelax.fst
../bin/spellrelax.fst: spellrelax.regex
	@echo
	@echo "*** Building spellrelax.fst ***" ;
	@echo
	@printf "read regex < spellrelax.regex \n\
	save stack ../bin/spellrelax.fst \n\
	quit \n" > ../../tmp/spellrelax-sma-script
	@xfst -utf8 < ../../tmp/spellrelax-sma-script
	@rm -f ../../tmp/spellrelax-sma-script


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
	$(XFST) < ../../tmp/caseconv-script
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
	$(XFST) < ../../tmp/tok-script
	@rm -f ../../tmp/tok-script


cor.save: ../bin/cor.save
../bin/cor.save: ../bin/xfst-cor.bin ../bin/cor-lex.save
	@echo
	@echo "*** Building the parser cor.save ***"
	@echo
	@printf "read regex [[@\"../bin/cor-lex.save\"] .o. \
	[@\"../bin/xfst-cor.bin\"]] ; \n\
	save stack ../bin/cor.save \n\
	quit \n" > ../../tmp/cor-save-script
	$(XFST) < ../../tmp/cor-save-script
	@rm -f ../../tmp/cor-save-script


# The second goal is to build cor-lex.save
# This goal depends on a bunch of lexicon files
cor-lex.save: ../bin/cor-lex.save
../bin/cor-lex.save: $(SRCS) 
	@echo
	@echo "*** Building cor-lex.save ***" ;
	@echo
	printf "compile-source $(SRCS) \n\
	save-source ../bin/cor-lex.save \n\
	quit \n" > ../../tmp/cor-lex-save-script
	$(LEXC) < ../../tmp/cor-lex-save-script
	rm -f ../../tmp/cor-lex-save-script



# The first goal is to build xfst-cor.bin
# This goal depends on xfst-cor.txt

xfst-cor.bin: ../bin/xfst-cor.bin
../bin/xfst-cor.bin: xfst-cor.txt
	@echo
	@echo "*** Building xfst-cor.bin ***" ;
	@echo
	@printf "source xfst-cor.txt \n\
	save stack ../bin/xfst-cor.bin \n\
	quit \n" > ../../tmp/xfst-cor-script
	$(XFST) -utf8 < ../../tmp/xfst-cor-script
	@rm -f ../../tmp/xfst-cor-script



# ##################################################### #
# 							#
#                    Speller section                    #
#							#
# ##################################################### #

# commands to compile:
#
# make wordlist
# make sorted
# make hunspellspeller
# cd ../hunspell/
# hunspell -d ./cor
# (and enter words)
# hunspell -d ./cor -l ../corp/kk.news.txt 
# (and have a look)


# This target must be built with M4FLAGS=-DHUNSPELL
hunspellspeller: sorted
	@echo
	@echo "*** Making $(TARGET) ../hunspell dictionary ***"
	filter_plx_file ../hunspell/dics ../hunspell/sorted-list.txt
	echo `wc -l ../hunspell/dics_tmp.dic` > ../hunspell/cor.dic
	cat ../hunspell/dics_tmp.dic >> ../hunspell/cor.dic
	# lag en fil aff_intro
	cat ../hunspell/aff_intro > ../hunspell/cor.aff
	# lag fonetiske regler (dette blir språkspesifikt, la denne evt. være tom)
	cat ../hunspell/phonrules >> ../hunspell/cor.aff
	cat ../hunspell/dics_tmp.aff >> ../hunspell/cor.aff


hsp-conversion: ifst-norm lexc2xspell #$(HSPSRCjava) $(HSPSRCprefix)




# Here we make full-form data files
# The generated word list is sent directly stdout, and then to gzip
# This is to avoid breaking a 2Gb file size limit in the Xerox tools.
# THIS COMMAND CAN ONLY BE RUN SUCCESSFULLY ON VICTORIO!
# It requires the commercial fst tool to be able to print all upper-words.
# (note: in sme we did lower-words, but here upper, as we use icor.fst)
wordlist: ../bin/icor.fst
	@echo
	@echo "*** Building full-form wordlist ***"
	@echo
	@printf "load stack < $< \n\
	upper-words \n\
	quit \n" > ../tmp/wordlist-script
	$(CFST) -f ../tmp/wordlist-script -q > ../tmp/wordlist.txt
	#@rm -f ../tmp/wordlist-script

sorted: wordlist
	@echo "*** Sorting wordlist ***"
	@echo
	@LC_ALL=C sort -T ../tmp -u -o ../hunspell/sorted-list.txt ../tmp/wordlist.txt



# ##################################################### #
#							#
#                   Clean target                        #
#							#
# ##################################################### #


clean:
	@rm -f ../bin/*.bin ../bin/*.fst ../bin/*.save





