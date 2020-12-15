
Content of this folder:
* GerlyverAkademi_kw_en_20_12_01.csv
* new_lexicon_for_evaluation: Interim files for addition to fst (mostly added, see below)
* old_lexicon: For reference: fst lexicon as it was before

* "Old version" = stems from 2008, "new version" = stems from GerlyverAkademi_kw_en_20_12_01
* mwe = multiword expression = lemma with space in dictionary

Files in src/fst/stems:
adjectives.lexc	  	unknown words from new_lexicon_for_evaluation added to fst (not mwe)
adverbs.lexc		unknown words from new_lexicon_for_evaluation added to fst (not mwe)
conjunctions.lexc	unknown words from new_lexicon_for_evaluation added to fst (not mwe)
interjections.lexc	unknown words from new_lexicon_for_evaluation added to fst (not mwe)
verbs.lexc		
nouns.lexc		unknown words from new_lexicon_for_evaluation added to fst (not mwe)

For reference: These are the noun classes in the old fst:
 257 m-yow
 189 f
 129 f-yow
  21 m-ys
  20 m
   7 m-sgtantum
   7 m-s
   4 GARLONT
   2 mutation
   2 m-yon
   2 m-pltantum
   2 m-ow
   2 m-es
   2 m-ag
   1 yonpl
   1 m-aff-i
   1 lemmaform:stem
   1 f-edh
   1 OJYON
   1 KI
   1 DEN

For reference: These are the POS (= column 7) in GerlyverAkademi_kw_en_20_12_01
6696 n.m
3863 vb
3038 adj
2812 n.f
 838 adv
 418 idiom
 352 n.coll
 197 prp
 196 prn
 117 n.pl
  91 num
  89 cnj
  74 int
  64 contr
  60 prfx
  48 
  26 part
  23 n.m, n.f
  22 n
  15 n.f, n.m
  10 sffx
   5 n.dl
   4 top
   1 PtOfSpeech

Columns in GerlyverAkademi_kw_en_20_12_01.csv:
     1	Concept_Id
     2	Dictionary_Id
     3	DictionaryEntry_Id
     4	Entry_Universal_Id
     5	Published
     6	Cornish
     7	PtOfSpeech
     8	Disambiguator
     9	English Equivalent
    10	English Equivalent Pos
    11	English Equivalent Plural
    12	Definition_EN
    13	Definition_CY
    14	Tags
