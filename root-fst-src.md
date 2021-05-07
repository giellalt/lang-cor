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
