def complement(nucleotide: u8): u8 =
  match nucleotide
    case 'G' -> 'C'
    case 'C' -> 'G'
    case 'T' -> 'A'
    case 'A' -> 'U'
    case _ -> assert false '.'

def to_rna [n] (dna: [n]u8): [n]u8 =
  dna
  |> map complement
