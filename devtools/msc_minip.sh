#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in cor:
# sh devtools/noun_minip.sh LAAVU | less
# sh devtools/noun_minip.sh smiergâs 
# Only get the lemma you ask for:
# sh devtools/noun_minip.sh '^smiergâs[:+]' 


HLOOKUP=$(echo $HLOOKUP)
GTLANGS=$(echo $GTLANGS)


PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/fst/morphology/stems/nouns.lexc | egrep $PATTERN |  tr '+' ':'|cut -d ':' -f1>$L_FILE

P_FILE="src/fst/morphology/test/testmscparadigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
#   echo "inndata: ${lemma}${form}"
#   echo "lookup: $HLOOKUP"
#   echo "fst: $GTLANGS/lang-cor/src/generator-gt-norm.hfstol"
   echo "${lemma}${form}" | $HLOOKUP $GTLANGS/lang-cor/src/generator-gt-norm.hfstol
 done
 rm -f $L_FILE
done

