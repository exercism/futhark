type amino_acid = #methionine | #phenylalanine | #leucine | #serine | #tyrosine | #cysteine | #tryptophan

local def equal [m] [n] (first: [m]u8) (second: [n]u8): bool =
  if m != n then false else
  let same = loop same = true for i < n do
    if first[i] == second[i] then same else
    false
  in
    same

local def contains (needle: []u8) (haystack: [][]u8): bool =
  let result = loop result = false for item in haystack do
    result || equal item needle
  in
    result

def proteins (strand: []u8): []amino_acid =
  let (result, _) = loop (result, index) = ([], 0) while index < length strand do
    let index = index + 3
    let codon = assert (index <= length strand) strand[index - 3:index]
    in
      if contains codon ["AUG"] then (result ++ [#methionine], index) else
      if contains codon ["UUU", "UUC"] then (result ++ [#phenylalanine], index) else
      if contains codon ["UUA", "UUG"] then (result ++ [#leucine], index) else
      if contains codon ["UCU", "UCC", "UCA", "UCG"] then (result ++ [#serine], index) else
      if contains codon ["UAU", "UAC"] then (result ++ [#tyrosine], index) else
      if contains codon ["UGU", "UGC"] then (result ++ [#cysteine], index) else
      if contains codon ["UGG"] then (result ++ [#tryptophan], index) else
      assert (contains codon ["UAA", "UAG", "UGA"]) (result, length strand)
  in
    result
