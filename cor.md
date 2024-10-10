# Cornish language model documentation

All doc-comment documentation in one large file.

---

# src-cg3-functions.cg3.md 



* Sets for POS sub-categories

* Sets for Semantic tags

* Sets for Morphosyntactic properties

* Sets for verbs

- V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.  
The REAL-V set thus awaits a fix to the preprocess V ... N bug.

* The set COPULAS is for predicative constructions

* NP sets defined according to their morphosyntactic features

* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")

* Miscellaneous sets

* Border sets and their complements

* Syntactic sets

These were the set types.

## HABITIVE MAPPING

* **hab1** 

* **hab2** 

* **hab3** (<hab> @ADVL>) for hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.

* **habNomLeft** 

* **hab4** 	

* **hab6** 

* **hab7** 

* **hab8** This is not HAB
* **hab5**  This is not HAB

* **habDain** (<hab> @ADVL>) for (Pron Dem Pl Loc) if leat followed by Nom to the right

* **habGen** (<hab> @<ADVL) hab for Gen; if Gen is located in the end of the sentence and Nom is sentence initial

* **spred<obj** (@SPRED<OBJ) for Acc; the object of an SPRPED. Not to be mistaken with OPRED. If SPRED is to the left, and copulas is to the left of it. Nom or Hab are found sentence initially.

* **Hab<spred** (@<SPRED) for Nom; if copulas, goallut or jápmit is FMAINV and habitive or human Loc is found to the left. OR: if Ill or @Pron< followed by HAB are found to the left.

* **Hab>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween HAB and <ext>.

* **Nom>Advlcase<spred** (<ext> @<SUBJ) for Nom; it allows adverbials with Ill/Loc/Com/Ess to be found inbetween Nom and <ext> @<SUBJ.

* **<spred** (<ext> @<SUBJ) for Nom; if copulas to the left, and some kind of adverb, N Loc, time related word or Po to the left of it. OR: if Ill or @Pron< to the left, followed by copulas and the before mentioned to the left of copulas. 

* **<spred** (<ext> @<SUBJ) for Nom, but not for Pers. To the left boahtit or heaŋgát as MAINV, and futher to the left is some kind of place related word, or time related word

* **<spredQst1** (<ext> @<SUBJ) for Nom in a typically question sentence; if A) Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. B) same as a, only the Qst-pcle is attached to copulas. C) Qst to the left, with copulas to its left, but not if two Nom:s are found somewhere to the right. D) copulas to the left, and BOS to the left. E) Loc or Ill to the left, and Loc or Hab to the left of this, Qst and copulas to the left. F) Num @>N to the left, Hab, some kind of place word, Po or Nom to the left, and Qst followed by copulas to the left. NOTE) for all these rules; human, Loc or Sem/Plc not allowed to the right.

* **<spredQst2** (@<SPRED) for Nom; in a typically question sentence; differs from <spredQst1 by not beeing as restricted to the right. Though you are not allowed to be Pers or human.

* **Nom<spredQst** (@<SPRED) for Nom; in a typically question sentence. Differs from <spredQst2 by letting Nom be found between SPRED and copulas

* **<spred** (@<SPRED) for A Nom or N Nom if; the subject Nom is on the same side of copulas as you: on the right side of copulas

* **<spredVeara** (@<SPRED) for veara + Nom; if genitive immediately to the right, and intransitive mainverb to the right of genitive

* **leftCop<spred** (@<SPRED) for Nom; if copulas is the main verb to the left, and there is no Ess found to the left of cop (note that Loc is allowed between target and cop). OR: if you are Coll or Sem/Group with copulas to your left. 

* **<spredLocEXPERIMENT** (@<SPRED) for material Loc; if you are to the right of copulas, and the Nom to the left of copulas is not a hab-actor

* **NumTime** (@<SPRED) for A Nom

* **<spredSg** (@<SPRED) for Sg Nom	

* **<spredPg** (@<SPRED) for Pl Nom	

* **<spred** (@<SPRED) for Nom; if copulas to the left, and Nom or sentence boundary to the left of copulas. First one to the right is EOS.

* **<spred** (@<SPRED) for N Ess

* **spredEss>** (@SPRED>) for N Ess; if copulas to the right of you, and if an NP with nom-case first one to your left.

* **HABSpredSg>** (@SPRED>) for Nom; if habitive first one to the left, followed by copulas.

* **GalleSpred>** (@SPRED>) for Num Nom; if sentence initial

* **spredSgMII>** (@SPRED>)

* **r492>** (@SPRED>) for Interr Gen; consisting only of negations. You are not allowed to be MII. You are not allowed to have an adjective or noun to yor right. You are not allowed to have a verb to your right; the exception beeing an aux.

* **AdjSpredSg>** (@SPRED>) for A Sg Nom; if copulas to the right, but not if A or @<SPRED are found to the right of copulas

* **SpredSg>Hab** (@SPRED>) for Nom; if you are sentence initial, copulas is located to the right, and there is a habitive to the right of copulas

* **Spred>SubjInf** (@SPRED>) for Nom; if copulas to the right, and the subject of copulas is an Inf to the right

* **spredCoord** (@<SPRED) coordination for Nom; only if there already is a SPRED to the left of CNP. Not if there is some kind of comparison involved.

* **subj>Sgnr1** (@SUBJ>) for Nom Sg, including Indef Nom if; VFIN + Sg3 or Pl3 to the right (VFIN not allowed to the left) 

* **subj>Du** (@SUBJ>) for dual nominatives, including Coll Nom. VFIN + Du3 to the right. 
* **subj>Pl** (@SUBJ>) for plural nominatives, including Coll and Sem/Group. VFIN + Pl3 to the right.

* **subj>Pl** (@SUBJ>) for plural nominatives

* **subj>Sgnr2** (@SUBJ>) for Nom Sg; if VFIN + Sg3 to the right.

* **<subjSg** (@<SUBJ) for Nom Sg; if VFIN Sg3 or Du2 to the left (no HAB allowed to the left).

* **f<advl** (@-F<ADVL) for infinite adverbials

* **f<advl** (@-F<ADVL) for infinite adverbials

* **s-boundary=advl>** (@ADVL>) for ADVL that resemble s-booundaries. Mainverb to the right.

* **-fobj>** (@-FOBJ>) for Acc 

* **-fobj>** (@-FOBJ>) for Acc

* **advl>mainV** (@ADVL>) if; finite mainverb not found to the left, but the finite mainverb is found to the right.

* **<advl** (@<ADVL) if; finite mainverb found to the left. Not if a comma is found immediately to the left and a finite mainverb is located somewhere to the right of this comma.

* **<advlPoPr** (@<ADVL) if mainverb to the left.
* **advlPoPr>** (@<ADVL) if mainverb to the right.

* **advlEss>** (@<ADVL) for weather and time Ess, if FMAINV to the left.

* **advl>inbetween** (@ADVL>) for Adv; if inbetween two sentenceboundaries where no mainverb is present.

* **comma<advlEOS** (@<ADVL) if; comma found to the left and the finite mainverb to the left of comma. To the right is the end of the sentence.

* **advlBOS>** (@ADVL>) if; you are N Ill and found sentnece initially. First one to your right is a clause.

* **<advlPoEOS** (@<ADVL) for Po; if you are found at the very end of a sentence. A mainverb is needed to the right though.

* **cleanupILL<advl** (@<ADVL) for N Ill if; there are no boundarysymbols to your left, if you arent already @N< OR @APP-N<, and no mainverb is to yor left.

* **<opredAAcc** (@<OPRED) for A Acc; if an other accusative to the left, and a transtive verb to the left of it. OR: if a transitive verb to the left, and an accusative to the left of it.

### sma object

* **<advlEss** (@<ADVL) for ESS-ADVL if; FMAINV to the left
* **<spredEss** (@<SPRED) for N Ess if; FMAINV to the left is intransitive or bargat

## SUBJ MAPPING - leftovers

## OBJ MAPPING - leftovers

## HNOUN MAPPING

* * *

<small>This (part of) documentation was generated from [src/cg3/functions.cg3](https://github.com/giellalt/lang-cor/blob/main/src/cg3/functions.cg3)</small>

---

# src-fst-morphology-affixes-adjectives.lexc.md 

# Adjectve morphology

Only add tag so far.

* **LEXICON adj** 
* **+Adj: # ;** 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/adjectives.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/affixes/adjectives.lexc)</small>

---

# src-fst-morphology-affixes-nouns.lexc.md 

# Cornish noun morphology

## Masculine stem classes
The nouns get tags (to the left of :, i.e. in the upper representation
and the suffixes are found to the left of the colon

* **LEXICON m** 

* **LEXICON m-yow** 

* **LEXICON m-ow** 

* **LEXICON m-ys** 

* **LEXICON m-es** 

* **LEXICON m-s** 

* **LEXICON m-yon** 

* **LEXICON m-aff-i** 

* **LEXICON m-ag** 

* **LEXICON m-sgtantum** 

* **LEXICON m-pltantum** 

## Feminine stem classes

* **LEXICON f** 

* **LEXICON f-yow** 

* **LEXICON f-edh** 

Nest step:

Here we add suffixes. These may be common to several stem classes
and are therefore pointed to in a different layer (this one)

## Number lexica

* **LEXICON sg** 

* **LEXICON yonpl** 

* **LEXICON owpl** 

* **LEXICON yowpl** 

* **LEXICON ipl** 

* **LEXICON yspl** 

* **LEXICON espl** 

* **LEXICON edhpl** 

* **LEXICON spl** 

* **LEXICON adjd** 

### Irregular plurals

* **LEXICON KI** 

* **LEXICON DEN** 

* **LEXICON OJYON** 

* **LEXICON GARLONT** 

# Mutation lexicon

* **LEXICON mutation** 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/nouns.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/affixes/nouns.lexc)</small>

---

# src-fst-morphology-affixes-numerals.lexc.md 



# Kven numerals 

# Numeral inflection
Numeral inflection is like nominal, except that numerals compound in all
forms which requires great amount of care in the inflection patterns.

* **LEXICON ARABICCASES**  adds +Arab

* **LEXICON ARABICCASE**  adds +Arab

* **LEXICON ARABICCASE0**  adds +Arab

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/numerals.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/affixes/numerals.lexc)</small>

---

# src-fst-morphology-affixes-propernouns.lexc.md 

# Propernoun affix

* **LEXICON prop** 
* **+N+Prop: mutation ;** 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/propernouns.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/affixes/propernouns.lexc)</small>

---

# src-fst-morphology-affixes-symbols.lexc.md 


# Symbol affixes

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/symbols.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/affixes/symbols.lexc)</small>

---

# src-fst-morphology-affixes-verbs.lexc.md 

# Verbal morphology

## The declension classes

### Auxiliaries

* bos+V:     COPULA     "to be" ;   
* mos+V:     MOS        "go" ;      
* dos+V:     DOS        "come" ;    
* gul+V:     GUL        "do" ;      

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/verbs.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/affixes/verbs.lexc)</small>

---

# src-fst-morphology-phonology.xfscript.md 

Cornish morph-phon grammar file

# Cornish morphphonology

This is the file for the morphophonological rules.

We keep a verbose style, at each point we tell what we will do.
That is the echo commands.

## Definitions

Here, we have left some documentation for curious readers:

* ^S = 2 = soft mutation						     \\
* ^A = 3 = breathed mutation					     \\
* ^P = 4 = hard mutation						     \\
* ^M = 5 = mixed mutation						     \\
* ^V = vowel affection							     \\
* ^E = triggers o to e in agent suffix			     \\
* ^D = no mutation dummy for immutable words	     \\
* ^CD = triggers consonant doubling in subjunctive  \\
* ^TRUNC = 									     \\

These triggers are given a name, so that we can delete them when
they have done their job.

* DummySymbols

* Boundary

* Dummy

* Vow 
* Cns 

* Yy 

* Symbols 

* Sgm 

## Rules

Here the action begins.

### Mutations

!identity

gsoft: 
If we encounter a final %^S symbol, we delete an initial g

Etc for changing g to h in front of %^M, etc.

Then we generalise:
softmut p -> b etc. in front of %^S

Change gw to g with gwsimplification

Aspirant mutation p > f etc. in front of %^A

k to h in front of %^A with kaspmut

!The other consonant rules

Devoicing b -> p etc. in front of %^P

Voiced plosive to fric with mixed in front of %^M

Nonmutation as identity when we do not have triggers.
Hmm, why is this needed?

ConsonantDoublingI bdg in front of %^CD

ConsonantDoublingII t in front of %^CD

ConsonantDoublingIII  various cns in front of %^CD

Devoicing b -> p

Deleting light stem vowel with LightStemVow

AuslautHerdung

Umlaut of e3, a4, ... in %^UML contexts
Always Uml if affix. Then Uml if no affix, but when %^UML mark

The triggers have done their work
The order of rules here is not crucial, crucial is the order below:
But it is a good idea to have the same rule here as well.
Dummydeletion comes last:

ArchiPhonemes should not be on the surface

## Compilation

Then we compile, one rule after another.

* read regex [ Nonmutation
* .o. identity
* .o. gsoft
* .o. gmixed
* .o. softmut
* .o. aspmut
* .o. kaspmut
* .o. prov
* .o. mixed
* .o. Nonmutation
* .o. ConsonantDoublingI
* .o. ConsonantDoublingII
* .o. ConsonantDoublingIII
* .o. Devoicing
* .o. LightStemVow
* .o. NoFinalH
* .o. STDEL
* .o. VowelAffection
* .o. OtoE
* .o. LightSuffixEK
* .o. Umlaut
* .o. ArchiPhonemes
* .o. DummyDeletion
* ] ;

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/phonology.xfscript](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/phonology.xfscript)</small>

---

# src-fst-morphology-root.lexc.md 

# Cornish morphology

First, we declare multicharacter symbols

## POS
* +N +V +A           
* +Adv +CC +CS +Interj +Pron +Num +Pr         
* +Smut +Mmut +Pmut +Amut                for mutation
* +Symbol = independent symbols in the text stream, like £, €, ©

## Verbal MSP
+Prs +Fut +Prt +Prf +Ipf +Plf       
+Ind +Imp +Sbj       
+Inf +Sit ! what is +Sit?       
+Pos +Neg +ConNeg       
+1Sg +2Sg +3Sg +1Pl +2Pl +3Pl       
+Impers       
+Ptc       
+VN       

## Nominal MSP
+Sg +Pl +P            
+Nom +Acc +Gen        
+Ord       

## Pronominal MSP
+Suff +Emph +Indef         
+Msc +Fem                  

Diacritical marks, to trigger
morphophonological rules.
The "%" symbol literalises the next symbol

%^S %^A %^P %^M %^V %^E        
%> %^D                         
%^UML %^CD %^TRUNC %^STDEL     

## Archiphonemes
 e3             e to o in plural
 a4 o4         Umlaut phonemes, changing to e

## Symbols that need to be escaped on the lower side (towards twolc):
* **»7**:  Literal »
* **«7**:  Literal «
```
 %[%>%]  - Literal >
 %[%<%]  - Literal <
```

## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:

| Flag | Explanation
| --- | --- 
|  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

| Flag | Explanation
| --- | --- 
|  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear first
|  @D.CmpPref.TRUE@ | Block such words from entering ENDLEX
|  @P.CmpPref.FALSE@ | Block these words from making further compounds
|  @D.CmpLast.TRUE@ | Block such words from entering R
|  @D.CmpNone.TRUE@ | Combines with the next tag to prohibit compounding
|  @U.CmpNone.FALSE@ | Combines with the prev tag to prohibit compounding
|  @P.CmpOnly.TRUE@ | Sets a flag to indicate that the word has passed R
|  @D.CmpOnly.FALSE@ | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.

| Flag | Explanation
| --- | --- 
|  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
|  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.
|  @P.Pmatch.Backtrack@ | For preprocessing
|  @R.ErrOrth.ON@ | resetting ErrOrth flag
|  @C.ErrOrth@ | clearing ErrOrth Flag.

* **+Use/TTS** – **only** retained in the HFST Text-To-Speech disambiguation tokeniser
* **+Use/-TTS** – **never** retained in the HFST Text-To-Speech disambiguation tokeniser

| Flag diacritic | Explanation
| :------------- |:-----------
| @U.number.one@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.two@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.three@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.four@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.five@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.six@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.seven@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.eight@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.nine@ | Flag used to give arabic numerals in smj different cases ;
| @U.number.zero@ | Flag used to give arabic numerals in smj different cases ;

# Key lexicon

* LEXICON Root        
    - Adverb ;	           
    - Noun ;		           
    - Propernoun ;           
    - Preposition ;          
    - Conjunction ;          
    - Subjunction ;          
    - Verb ;		           
    - Adjective ;	           
    - Interjection ;         
    - Numeral ;	           
    - Pronoun ;	           
    - Punctuation ;          
    - Symbols     ;          

Adhoc lexica, to be fixed

* LEXICON ENDLEX       
* LEXICON RNum       
* LEXICON ARABICCOMPOUNDS        

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/root.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/root.lexc)</small>

---

# src-fst-morphology-stems-adjectives.lexc.md 

# The Cornish Adjective root lexicon

Some 1300 adjectives, only one continuation lexicon. (**adj**).

**LEXICON Adjective** 
Albanek adj "Scottish. Scots" ; 
Almaynek adj "German" ; 
a-berthek adj "intrinsic" ; 
a-dhevis adj "exact" ; 
ardhek adj "lofty" ; 
arhansek adj "financial" ; 
arnowydh adj "modern" ; 
...

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adjectives.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/stems/adjectives.lexc)</small>

---

# src-fst-morphology-stems-adverbs.lexc.md 

# Cornish Adverbs

Documenting `stems/adverbs.lexc`

Adding the tag +Adv

**LEXICON adv** adds the tag **+Adv**
+Adv: # ;

The adverbs

**LEXICON Adverb** lists the adverbs
a-bell adv "afar. " ;
a-bervedh adv "inside, indoors, aboard." ;
a-ble adv "whence, from what place. " ;
dhi adv "thither, to that place." ;
hedhyw adv "today." ;
hevlyna adv "this year." ;
isos adv "downward, below." ;
jammes adv "never." ;

Then comes the list with adverbs from the 2020 dictionary

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/adverbs.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/stems/adverbs.lexc)</small>

---

# src-fst-morphology-stems-conjunctions.lexc.md 

# Cornish Conjunctions

This documents the file `stems/conjunctions.lexc`. Note that based on the English 
translations it seems there are some subjunctions here, and it also seems the Cornish
version of *and* is missing. Have a look at the original file!

**LEXICON CC** adds tag **+CC**

**LEXICON Conjunction** lists 30 or so conjunctions
mes CC "but" ;
hag CC "and (before vowels)" ;
ha CC "and (before consonants)" ;
po CC "or" ;
bo CC "or" ;
py CC "or" ;
rag CC "for" ;

2020 dictionary CC entries not known to fst

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/conjunctions.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/stems/conjunctions.lexc)</small>

---

# src-fst-morphology-stems-interjections.lexc.md 

# Interjections

**LEXICON aj** adds tag 
* +Interj: # ; 

**LEXICON Interjection** lists the interjections
* a aj "o" ; 
* agh aj "ugh" ; 
* aha aj "aha" ; 
...

Words from 2020 dictionary

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/interjections.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/stems/interjections.lexc)</small>

---

# src-fst-morphology-stems-nouns.lexc.md 

# Lexicon over Cornish nouns

## Short overview of the types

Masculines
* **m** = ow plural
* **m-yow** = yow plural (all new 2020 masculines assigned here)
* **m-ys** = ys plural
* **m-yon** = yon plural
* **m-yn** = yn plural 	*not implemented yet*
* **m-ag** = -(y)er agent nouns
* **m-es** = -es plural
* **m-ens	** = -ens plural 	*not implemented yet*
* **m-s** = -s plural
* **m-** = balek-wörter
* **m-dual** = Duals		*not implemented yet*
* **m-aff** = Root vowel change
* **m-yon** = yon plural
* **m-aff-i** = i plural
* **m-sgtantum** = Singularia tantum
* **m-pltantum** = Pluralia tantum

Feminines
* **f** = ow plural
* **f-yow** = yow plural
* **f-yon** = yon plural

## The stems

* **LEXICON Noun** contains all the nouns 

## Exceptions

ki, den, ojyon, ...

## Regular nouns

## Masculine

### lexc syntax:
lemmaform:stem continuationlexicon "facultative translation" ;
without the colon, lemmaform and stem are identical.
The morphology is then handeled in noun-kor-morph.txt

Here the noun types begin:

### ow plural
All -(y)ans nouns are here even though the dictionary lists no plurals for them (Brown, p. 30)
* abatti m "abbey" ; 
* abes m "abbot" ; 
...

yow plural
* aber m-yow "river mouth" ; 
* grogys m-yow "belt" ; 
...

ys plural
* acheson m-ys "reason" ; 
* adamant m-ys "diamond" ; 
...

yon plural
* akontydh m-yon "accountant" ; 

-(y)er agent nouns
* aghskrifer:aghskrifor m-ag "genealogist" ; 
* bleujenner:bleujennor m-ag "florist" ; 
* begyer+N+Msc:begyor yonpl "beggar" ;  also m-s

-es plural

* baban m-es "baby" ; 
* badh m-es "boar" ; 

-s plural

* bacheler m-s "bachelor" ; 
* balyer m-s "balyers" ; 
...

balek-wörter

* balek:bale3k m ; 

Duals

Root vowel change

yon plural

* mab:ma4b m-yon "son" ; 

i plural

* abostol:abo4sto4l m-aff-i "apostle" ; not working yet

Singularia tantum
* adhvetter m-sgtantum "ripeness" ; 
* Afrikan m-sgtantum "African" ; 
...

Pluralia tantum
* arghans m-pltantum "money" ; MF
* mona m-pltantum "money" ;  NW
mona is here as illustration, should get a new continuation lex

## Longer lists

### Masculines

m-ow 

* lavrok:lavrog m-ow ; 
* lavrok:lavreg m-ow ; UC

m-yow 

* aber m-yow "river mouth" ; 
* anken m-yow "misery" ; 
* ankor m-yow "anchor" ; 
...

m-ys 

* kanel m-ys "tap" ; 
* mason m-ys "mason" ; 
...

### Feminines

#### Irregular feminines

* modrep:modreb f-edh ; 

#### f with ow plural 

* abases f "abbess" ; 
* tagel f "constriction, choker" ; 
...

#### f-yow 

* aden f-yow "binding board of a book" ; 
* als f-yow "cliff" ; 
...

Masculine nouns from 2020 dictionary. TODO: Check for inflection class

* 'Edhow m-yow "Jew" ; 
* 'eghes m-yow "health" ; 
* Albanian m-yow "Albanian" ; 
* Albaniek m-yow "Albanian language" ; 
* Alman m-yow "German" ; 
* alarm m-yow "alarm" ; 
* albom m-yow "album" ; 
* alejyans m-yow "allegation" ; 
...

Feminine nouns from 2020 dictionary. TODO: Check for inflection class

* 'Edhowes f "Jew" ; 
* 'eth f "language" ; 
* Afrikanes f "African" ; 
* banadhlek f "broom-brake" ; 
* banken f "bank" ; 
* banow f "sow" ; 
...

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/nouns.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/stems/nouns.lexc)</small>

---

# src-fst-morphology-stems-numerals.lexc.md 

# Cornish numeral stems

* **LEXICON Numeral** 

* **LEXICON Cardinals** 
* **onan card-yow "one" ;** 
* **onen card-yow "one" ;** 

* **LEXICON Ordinals** 
* **pajwora ord-yow "fourth" ;** 
* **pempes ord-yow "fifth" ;** 

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/numerals.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/stems/numerals.lexc)</small>

---

# src-fst-morphology-stems-prepositions.lexc.md 

# Cornish prepositions 

Four classes:
* Class 1  
* Class 2 
* Class 3 
* Class 4 

**LEXICON pp**   tag only
* +Pr: # ;

**LEXICON pp-prono** tag and person forms, -o-
* +Pr:0 # ; =  bare form
* +Pr+1Sg:ov # ; 
* +Pr+2Sg:os # ;
...

**LEXICON pp-proni** tag and person -i-
* +Pr: # ; bare form
* +Pr+1Sg:iv # ;
* +Pr+2Sg:is # ;
...

**LEXICON pp-a** tag and person form -a-
* +Pr: # ; bare form
* +Pr+1Sg:hanav # ;
* +Pr+2Sg:hanas # ;
---

**LEXICON Preposition** the list (some 20-30)
* a pp-a "of, from" ;
* avel pp-prono "like" ;
* a-barth pp "for the sake of, beside, in the name of, along with" ;
...

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/prepositions.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/stems/prepositions.lexc)</small>

---

# src-fst-morphology-stems-pronouns.lexc.md 

# Cornish Pronoun stems and morphology

This file lists pronouns fullforms.

**LEXICON Pronoun** 
* Personal ;
* Demonstrative ;
* Determinative ;
* Possessive ;
* Indefinite ;
* Suffixed ;

**LEXICON Personal** 
* my+Pron+Pers+Nom+1Sg:my # ;
* my+Pron+Pers+Nom+1Sg:'m # ;
...

**LEXICON Suffixed** 
* my+Pron+Pers+Suff+1Sg:vy # ;
* my+Pron+Pers+Suff+Emph+1Sg:evy # ;

**LEXICON Demonstrative** 
* ma+Dem:ma # "this" ;
* na+Dem:na # "that" ;
* hemm+Dem+Sem/Msc+Sg:hemm # "this one (masc.)" ;
...

**LEXICON Determinative** 
* an+Det+Def:an # ;

**LEXICON Possessive** 
* ow+Pron+Poss+1Sg:ow # ;
* dha+Pron+Poss+2Sg:dha # ;
...

**LEXICON Indefinite** 
* huni+Pron+Indef+Sg:huni # ;

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/pronouns.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/stems/pronouns.lexc)</small>

---

# src-fst-morphology-stems-propernouns.lexc.md 

# Cornish proper nouns 

This file lists cornish proper nouns. They are directed to the same continuation lexicon.

* **LEXICON Propernoun** 
* **Abram prop ;** 
* **Adam prop ;** 
... and some 1000 more.

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/propernouns.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/stems/propernouns.lexc)</small>

---

# src-fst-morphology-stems-subjunctions.lexc.md 


# Cornish Subjunctions

This file lists the subjunctions and assign them the **+CS** tag.

**LEXICON CS** Adds tag +CS

**LEXICON Subjunction** contains the 20 or so subjunctions
ages CS "than" ;
awos CS "because, though, for the sake of, in spite of" ;
drefenn CS "because, on account of" ;
erna CS "till, until" ;
...

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/subjunctions.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/stems/subjunctions.lexc)</small>

---

# src-fst-morphology-stems-verbs.lexc.md 


# Cornish Verb stems

## The regular verb system -- an overview:

This shows two version of the analysis, one from 2009 (for reference) and
one from 2020 (the current one).

### For reference: This was the first version of the model (2009)
vb1-vb5 are declension classes.
* vb1) -a     no i-Umlaut im Paradima
* vb2) -ya    ya-Verbs
* vb3) -es/-i i-Umlaut im Paradigma
* vb4) -he    he-Verbs
* vb5) -el/-i -C[l|n|m](r)-Verben
* And finally the irregulars: Suppletion im Paradigma

### The 2020 version of the model:
* vb1 -a     (= v1 above)
* vbya -ya   (= v2 above)
* vbi -i     (= v3 above)
* vbhe -e    (= v4 above)
* vb the rest (= ??? above)
* Irregulars (the final cat above)

2020 verbs were added as follows:
verbs with -ya, -i, -he infinitive to vbya, vbi, vbye
verbs in -a other than -ya to vb1
all other verbs to vb
TODO: Go through the new verbs (at the end of this file)

## Umlaut class verbs

* u0. Verbs that never have Umlaut?
* u1. Verbs that only have umlaut before an ending that contains <i>, <y>, <owgh> or imperative <ewgh>.
* u2. Verbs that have umlaut wherever (1) does, but also have the imperfect tense in <-yn, -ys, -i, -yn>.
* u3. Verbs that have umlaut wherever (2) does (including the imperfect tense rule), and also have the 3s pret in <-is>.
* u1 This means VA before suffixes containing <i y owgh> or imperative <ewgh>
* u2 This means VA before everything in Umlaut = 1, + the following: 3s and 3p present indicative, 3s and 3p imperative
* u3

Todo:
* for each stem class, split in umlaut type and make sub-contlexes.
* In theory, this gives us 6x4 = 24 verbal continuation lexica.

It is fortunately easier than that:
* -el verbs are always type 3: v5-u3
* some -i verbs are type 3: v3-u3
* and the rest are type 2: v3-u2
* he-verbs are all type 2: v4-u2

## The verb lexicon

**LEXICON Verb** lists all the verbs
* AUX ; = this one entry points to the AUX lexicon in the affixes catalogue

* erhi:arha ERHI "command, order, require, bid" ; = some example entries
* tava:tav TAVA "touch, stroke " ; = 
* anomdhiskwedhes:anomdhiskwedh vb "disappear" ; = 
* aras:ar vb "plough" ; = 
* argeles:argel vb "sequester" ; = 
* arvedh:arvedh vb "affront, harass, browbeat" ; = 
* batalyas:bataly vb "fight" ; = 
* bryjon:bryjon vb "boil" ; = 
* gortos:gortos vb "await, wait for, remain, stay" ; = 
* gwrias:gwri vb "sew, stitch" ; = 

Verbs from the 2020 dictionary

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/verbs.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/morphology/stems/verbs.lexc)</small>

---

# src-fst-phonetics-txt2ipa.xfscript.md 



retroflex plosive, voiceless			t`  ʈ	    0288, 648 (` = ASCII 096)
retroflex plosive, voiced			d`	ɖ		0256, 598
labiodental nasal					F 	ɱ		0271, 625
retroflex nasal						n` 	ɳ		0273, 627
palatal nasal						J 	ɲ		0272, 626
velar nasal							N 	ŋ		014B, 331
uvular nasal							N\	ɴ		0274, 628
	
bilabial trill						B\ 	ʙ		0299, 665
uvular trill							R\ 	ʀ		0280, 640
alveolar tap							4	ɾ		027E, 638
retroflex flap						r` 	ɽ		027D, 637
bilabial fricative, voiceless		p\ 	ɸ		0278, 632
bilabial fricative, voiced			B 	β		03B2, 946
dental fricative, voiceless			T 	θ		03B8, 952
dental fricative, voiced				D 	ð		00F0, 240
postalveolar fricative, voiceless	S	ʃ		0283, 643
postalveolar fricative, voiced		Z 	ʒ		0292, 658
retroflex fricative, voiceless		s` 	ʂ		0282, 642
retroflex fricative, voiced			z` 	ʐ		0290, 656
palatal fricative, voiceless			C 	ç		00E7, 231
palatal fricative, voiced			j\ 	ʝ		029D, 669
velar fricative, voiced	        	G 	ɣ		0263, 611
uvular fricative, voiceless			X	χ		03C7, 967
uvular fricative, voiced				R 	ʁ		0281, 641
pharyngeal fricative, voiceless		X\ 	ħ		0127, 295
pharyngeal fricative, voiced			?\ 	ʕ		0295, 661
glottal fricative, voiced			h\	ɦ		0266, 614

alveolar lateral fricative, vl.		K 
alveolar lateral fricative, vd.		K\

labiodental approximant				P (or v\) 
alveolar approximant					r\ 
retroflex approximant				r\` 
velar approximant					M\

retroflex lateral approximant		l` 
palatal lateral approximant			L 
velar lateral approximant			L\
Clicks

bilabial								O\	(O = capital letter) 
dental								|\
(post)alveolar						!\ 
palatoalveolar						=\ 
alveolar lateral						|\|\
Ejectives, implosives

ejective								_>	e.g. ejective p		p_>
implosive							_<	e.g. implosive b	b_<
Vowels

close back unrounded					M
close central unrounded 				1 
close central rounded				} 
lax i								I 
lax y								Y 
lax u								U

close-mid front rounded				2 
close-mid central unrounded			@\ 
close-mid central rounded			8 
close-mid back unrounded				7

schwa	ə							@

open-mid front unrounded				E 
open-mid front rounded				9
open-mid central unrounded			3 
open-mid central rounded				3\ 
open-mid back unrounded				V 
open-mid back rounded				O

ash (ae digraph)						{ 
open schwa (turned a)				6

open front rounded					& 
open back unrounded	        		A 
open back rounded					Q
Other symbols

voiceless labial-velar fricative		W 
voiced labial-palatal approx.		H 
voiceless epiglottal fricative		H\ 
voiced epiglottal fricative			<\ 
epiglottal plosive					>\

alveolo-palatal fricative, vl. 		s\ 
alveolo-palatal fricative, voiced	z\ 
alveolar lateral flap				l\ 
simultaneous S and x					x\ 
tie bar								_
Suprasegmentals

primary stress						" 
secondary stress						% 
long									: 
half-long							:\ 
extra-short							_X 
linking mark							-\
Tones and word accents

level extra high						_T 
level high							_H
level mid							_M 
level low							_L 
level extra low						_B
downstep								! 
upstep								^	(caret, circumflex)

contour, rising						 
contour, falling						_F 
contour, high rising					_H_T 
contour, low rising					_B_L 

contour, rising-falling				_R_F 
(NB Instead of being written as diacritics with _, all prosodic 
marks can alternatively be placed in a separate tier, set off 
by < >, as recommended for the next two symbols.)
global rise						<R> 
global fall						<F>
Diacritics						
									
voiceless						_0	(0 = figure), e.g. n_0
voiced							_v 
aspirated						_h 
more rounded						_O	(O = letter) 
less rounded						_c 
advanced							_+
retracted						_-
centralized						_" 
syllabic							=	(or _=) e.g. n= (or n_=) 
non-syllabic						_^ 
rhoticity						`
									
breathy voiced					_t 
creaky voiced					_k
linguolabial						_N 
labialized						_w 
palatalized						'	(or _j) e.g. t' (or t_j) 
velarized						_G 
pharyngealized					_?\
									
dental							_d 
apical							_a 
laminal							_m
nasalized						~	(or _~) e.g. A~ (or A_~) 
nasal release					_n
lateral release					_l 
no audible release				_}

velarized or pharyngealized		_e 
velarized l, alternatively		5 
raised							_r 
lowered							_o 
advanced tongue root				_A 
retracted tongue root			_q

* * *

<small>This (part of) documentation was generated from [src/fst/phonetics/txt2ipa.xfscript](https://github.com/giellalt/lang-cor/blob/main/src/fst/phonetics/txt2ipa.xfscript)</small>

---

# src-fst-transcriptions-transcriptor-abbrevs2text.lexc.md 



We describe here how abbreviations are in Cornish are read out, e.g.
for text-to-speech systems.

For example:

* s.:syntynyt # ;  
* os.:omaa% sukua # ;  
* v.:vuosi # ;  
* v.:vuonna # ;  
* esim.:esimerkki # ; 
* esim.:esimerkiksi # ; 

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-abbrevs2text.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/transcriptions/transcriptor-abbrevs2text.lexc)</small>

---

# src-fst-transcriptions-transcriptor-numbers-digit2text.lexc.md 



% komma% :,      Root ;
% tjuohkkis% :%. Root ;
% kolon% :%:     Root ;
% sárggis% :%-   Root ; 
% násti% :%*     Root ; 

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-numbers-digit2text.lexc](https://github.com/giellalt/lang-cor/blob/main/src/fst/transcriptions/transcriptor-numbers-digit2text.lexc)</small>

---

# tools-grammarcheckers-grammarchecker.cg3.md 


[ L A N G U A G E ]  G R A M M A R   C H E C K E R

# DELIMITERS

# TAGS AND SETS

## Tags

This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.

### Beginning and end of sentence
BOS
EOS

### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB
LEFT
RIGHT
WEB
PPUNCT
PUNCT

COMMA
¶

### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall

### Tags for morphosyntactic properties

Nom
Acc
Gen
Ill
Loc
Com
Ess
Ess
Sg
Du
Pl
Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp
Superl
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Du1
Du2
Du3
Pl1
Pl2
Pl3
Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess

Err/Orth

### Semantic tags

Sem/Act
Sem/Ani
Sem/Atr
Sem/Body
Sem/Clth
Sem/Domain
Sem/Feat-phys
Sem/Fem
Sem/Group
Sem/Lang
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt

HUMAN

PROP-ATTR
PROP-SUR

TIME-N-SET

###  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X

## Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.

### Sets for Single-word sets

INITIAL

### Sets for word or not

WORD
NOT-COMMA

### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

### Verb sets

NOT-V

### Sets for finiteness and mood

REAL-NEG

MOOD-V

NOT-PRFPRC

### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V

### Pronoun sets

### Adjectival sets and their complements

### Adverbial sets and their complements

### Sets of elements with common syntactic behaviour

### NP sets defined according to their morphosyntactic features

### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

### Border sets and their complements

### Grammarchecker sets

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-cor/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>

---

# tools-tokenisers-tokeniser-disamb-gt-desc.pmscript.md 

# Tokeniser for cor

Usage:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1. unknown word-like forms, and
2. unmatched strings
We want to give 1) a match, but let 2) be treated specially by
`hfst-tokenise -a`
Unknowns are made of:
* lower-case ASCII
* upper-case ASCII
* select extended latin symbols
ASCII digits
* select symbols
* Combining diacritics as individual symbols,
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

## Unknown handling
Unknowns are tagged ?? and treated specially with `hfst-tokenise`
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-disamb-gt-desc.pmscript](https://github.com/giellalt/lang-cor/blob/main/tools/tokenisers/tokeniser-disamb-gt-desc.pmscript)</small>

---

# tools-tokenisers-tokeniser-gramcheck-gt-desc.pmscript.md 

# Grammar checker tokenisation for cor

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript](https://github.com/giellalt/lang-cor/blob/main/tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript)</small>

---

# tools-tokenisers-tokeniser-tts-cggt-desc.pmscript.md 

# TTS tokenisation for smj

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```sh
make
echo "ja, ja" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```sh
echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa \
boasttu olmmoš, man mielde lahtuid." \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "márffibiillagáffe" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://kitwiki.csc.fi/twiki/bin/view/KitWiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Needs hfst-tokenise to output things differently depending on the tag they get

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-tts-cggt-desc.pmscript](https://github.com/giellalt/lang-cor/blob/main/tools/tokenisers/tokeniser-tts-cggt-desc.pmscript)</small>
