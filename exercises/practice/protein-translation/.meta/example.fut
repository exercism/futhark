type amino_acid = #methionine | #phenylalanine | #leucine | #serine | #tyrosine | #cysteine | #tryptophan

local def equal [m] [n] (first: [m]u8) (second: [n]u8): bool =
  if m != n then false else
  let same = loop same = true for i < n do
    same && (first[i] == second[i])
  in
    same

local def contains (needle: []u8) (haystack: [][]u8): bool =
  let found = loop found = false for item in haystack do
    found || equal item needle
  in
    found

local def is_stop (codon: []u8): bool =
  contains codon ["UAA", "UAG", "UGA"]

local def translate (codon: []u8): amino_acid =
  if contains codon ["AUG"] then #methionine else
  if contains codon ["UUU", "UUC"] then #phenylalanine else
  if contains codon ["UUA", "UUG"] then #leucine else
  if contains codon ["UCU", "UCC", "UCA", "UCG"] then #serine else
  if contains codon ["UAU", "UAC"] then #tyrosine else
  if contains codon ["UGU", "UGC"] then #cysteine else
  assert (contains codon ["UGG"]) #tryptophan

def proteins (strand: []u8): []amino_acid =
  let (result, _) = loop (result, index) = ([], 0) while index < length strand do
    let index = index + 3
    let codon = assert (index <= length strand) strand[index - 3:index]
    in
      if is_stop codon then (result, length strand) else
      (result ++ [translate codon], index)
  in
    result
