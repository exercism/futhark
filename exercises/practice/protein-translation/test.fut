import "protein_translation"

-- Empty RNA sequence results in no proteins
-- ==
-- input  { "" }
-- output { empty([0][13]u8) }

-- Methionine RNA sequence
-- ==
-- input  { "AUG" }
-- output { ["Methionine   "] }

-- Phenylalanine RNA sequence 1
-- ==
-- input  { "UUU" }
-- output { ["Phenylalanine"] }

-- Phenylalanine RNA sequence 2
-- ==
-- input  { "UUC" }
-- output { ["Phenylalanine"] }

-- Leucine RNA sequence 1
-- ==
-- input  { "UUA" }
-- output { ["Leucine      "] }

-- Leucine RNA sequence 2
-- ==
-- input  { "UUG" }
-- output { ["Leucine      "] }

-- Serine RNA sequence 1
-- ==
-- input  { "UCU" }
-- output { ["Serine       "] }

-- Serine RNA sequence 2
-- ==
-- input  { "UCC" }
-- output { ["Serine       "] }

-- Serine RNA sequence 3
-- ==
-- input  { "UCA" }
-- output { ["Serine       "] }

-- Serine RNA sequence 4
-- ==
-- input  { "UCG" }
-- output { ["Serine       "] }

-- Tyrosine RNA sequence 1
-- ==
-- input  { "UAU" }
-- output { ["Tyrosine     "] }

-- Tyrosine RNA sequence 2
-- ==
-- input  { "UAC" }
-- output { ["Tyrosine     "] }

-- Cysteine RNA sequence 1
-- ==
-- input  { "UGU" }
-- output { ["Cysteine     "] }

-- Cysteine RNA sequence 2
-- ==
-- input  { "UGC" }
-- output { ["Cysteine     "] }

-- Tryptophan RNA sequence
-- ==
-- input  { "UGG" }
-- output { ["Tryptophan   "] }

-- STOP codon RNA sequence 1
-- ==
-- input  { "UAA" }
-- output { empty([0][13]u8) }

-- STOP codon RNA sequence 2
-- ==
-- input  { "UAG" }
-- output { empty([0][13]u8) }

-- STOP codon RNA sequence 3
-- ==
-- input  { "UGA" }
-- output { empty([0][13]u8) }

-- Sequence of two protein codons translates into proteins
-- ==
-- input  { "UUUUUU" }
-- output { ["Phenylalanine", "Phenylalanine"] }

-- Sequence of two different protein codons translates into proteins
-- ==
-- input  { "UUAUUG" }
-- output { ["Leucine      ", "Leucine      "] }

-- Translate RNA strand into correct protein list
-- ==
-- input  { "AUGUUUUGG" }
-- output { ["Methionine   ", "Phenylalanine", "Tryptophan   "] }

-- Translation stops if STOP codon at beginning of sequence
-- ==
-- input  { "UAGUGG" }
-- output { empty([0][13]u8) }

-- Translation stops if STOP codon at end of two-codon sequence
-- ==
-- input  { "UGGUAG" }
-- output { ["Tryptophan   "] }

-- Translation stops if STOP codon at end of three-codon sequence
-- ==
-- input  { "AUGUUUUAA" }
-- output { ["Methionine   ", "Phenylalanine"] }

-- Translation stops if STOP codon in middle of three-codon sequence
-- ==
-- input  { "UGGUAGUGG" }
-- output { ["Tryptophan   "] }

-- Translation stops if STOP codon in middle of six-codon sequence
-- ==
-- input  { "UGGUGUUAUUAAUGGUUU" }
-- output { ["Tryptophan   ", "Cysteine     ", "Tyrosine     "] }

-- Sequence of two non-STOP codons does not translate to a STOP codon
-- ==
-- input  { "AUGAUG" }
-- output { ["Methionine   ", "Methionine   "] }

-- Unknown amino acids, not part of a codon, can't translate
-- ==
-- input  { "XYZ" }
-- error: Error*

-- Incomplete RNA sequence can't translate
-- ==
-- input  { "AUGU" }
-- error: Error*

-- Incomplete RNA sequence can translate if valid until a STOP codon
-- ==
-- input  { "UUCUUCUAAUGGU" }
-- output { ["Phenylalanine", "Phenylalanine"] }

local def name (a: amino_acid): [13]u8 =
  match a
    case #methionine    -> "Methionine   "
    case #phenylalanine -> "Phenylalanine"
    case #leucine       -> "Leucine      "
    case #serine        -> "Serine       "
    case #tyrosine      -> "Tyrosine     "
    case #cysteine      -> "Cysteine     "
    case #tryptophan    -> "Tryptophan   "

def main (strand: []u8): [][13]u8 =
  map1 name (proteins strand)
