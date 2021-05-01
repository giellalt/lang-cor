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

# Propernoun affix

 * **LEXICON prop** 
 * **+N+Prop: mutation ;** 





# Symbol affixes





# Adjectve morphology

Only add tag so far.

 * **LEXICON adj** 
 * **+Adj: # ;** 
# Verbal morphology


## The declension classes


### Auxiliaries

 * bos+V:     COPULA     "to be" ;   
 * mos+V:     MOS        "go" ;      
 * dos+V:     DOS        "come" ;    
 * gul+V:     GUL        "do" ;      















































































# Kven numerals 

# Numeral inflection
Numeral inflection is like nominal, except that numerals compound in all
forms which requires great amount of care in the inflection patterns.



 * **LEXICON ARABICCASES**  adds +Arab

 * **LEXICON ARABICCASE**  adds +Arab

 * **LEXICON ARABICCASE0**  adds +Arab










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

# Lexicon over Cornish nouns





## Exceptions

ki, den, ojyon, ...




## Short overview of the types
Masculines
* m = ow plural
* m-yow = yow plural (all new 2020 masculines assigned here)
* m-ys = ys plural
* m-yon = yon plural
* m-yn = yn plural 	*not implemented yet*
* m-ag = -(y)er agent nouns
* m-es = -es plural
* m-ens	 = -ens plural 	*not implemented yet*
* m-s = -s plural
* m- = balek-wörter
* m-dual = Duals		*not implemented yet*
* m-aff = Root vowel change
* m-yon = yon plural
* m-aff-i = i plural
* m-sgtantum = Singularia tantum
* m-pltantum = Pluralia tantum

Feminines
* f = ow plural
* f-yow = yow plural
* f-yon = yon plural


## Masculine

### lexc syntax:
lemmaform:stem continuationlexicon "facultative translation" ;
without the colon, lemmaform and stem are identical.
The morphology is then handeled in noun-kor-morph.txt

Here the noun types begin:

### ow plural
All -(y)ans nouns are here even though the dictionary lists no plurals for them (Brown, p. 30)

yow plural

ys plural

yon plural

-(y)er agent nouns


-es plural


-s plural



balek-wörter



Duals

Root vowel change

yon plural


i plural
































Masculine nouns from 2020 dictionary. TODO: Check for inflection class



Feminine nouns from 2020 dictionary. TODO: Check for inflection class


# Cornish proper nouns !

 * **LEXICON Propernoun** 
 * **Abram prop ;** 
 * **Adam prop ;** 
... and some 1000 more.






# Pronoun stems and morphology


 * Personal ;	     
 * Demonstrative ;  
 * Determinative ;  
 * Possessive ;     
 * Indefinite ;     
 * Suffixed ;	     








# Cornish prepositions !


Four classes:
* Class 1  
* Class 2 
* Class 3 
* Class 4 













Words from 2020 dictionary

# Adverbs

Adding the tag +Adv


The adverbs



Then comes the list with adverbs from the 2020 dictionary

# Adjective root lexicon

Some 1300 adjectives, only one continuation lexicon.


# Subjunctions

Adding tag +CS


Some 20 subjunctions here


# Verb stems

## Auxiliaries and exceptions


## Verbs tems proper


The regular verbs -- a discussion:

Overview over types
This is what  we were aspiring at in 2009:

Here, 1-5 are declension classes.
* vb1) -a     no i-Umlaut im Paradima
* vb2) -ya    ya-Verbs
* vb3) -es/-i i-Umlaut im Paradigma
* vb4) -he    he-Verbs
* vb5) -el/-i -C[l|n|m](r)-Verben
* And finally the irregulars: Suppletion im Paradigma

Continuation lexica:
This is what we have today:
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






## The verbs



Verbs from the 2020 dictionary

# Conjunctions



2020 dictionary CC entries not known to fst
# Numeral stems

 * **LEXICON Numeral** 

 * **LEXICON Cardinals** 
 * **onan card-yow "one" ;** 
 * **onen card-yow "one" ;** 


 * **LEXICON Ordinals** 
 * **pajwora ord-yow "fourth" ;** 
 * **pempes ord-yow "fifth" ;** 
















































% komma% :,      Root ;
% tjuohkkis% :%. Root ;
% kolon% :%:     Root ;
% sárggis% :%-   Root ; 
% násti% :%*     Root ; 




We describe here how abbreviations are in Cornish are read out, e.g.
for text-to-speech systems.

For example:

 * s.:syntynyt # ;  
 * os.:omaa% sukua # ;  
 * v.:vuosi # ;  
 * v.:vuonna # ;  
 * esim.:esimerkki # ; 
 * esim.:esimerkiksi # ; 


