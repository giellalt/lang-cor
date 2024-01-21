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

