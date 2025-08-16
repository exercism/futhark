def gen_test_case(prop, description, inp, expected, f):
    def serialize_amino_acid(amino_acid):
        return '"' + amino_acid + " " * (13 - len(amino_acid)) + '"'

    def serialize_amino_acids(amino_acids):
        if amino_acids == []:
            return "empty([0][13]u8)"

        return "[" + ", ".join(map(serialize_amino_acid, amino_acids)) + "]"

    strand = inp["strand"]

    f.write(f"-- {description}\n")
    f.write("-- ==\n")
    f.write('-- input  { "' + strand + '" }\n')

    if isinstance(expected, dict):
        f.write("-- error: Error*\n\n")
    else:
        expected = serialize_amino_acids(expected)
        f.write("-- output { " + expected + " }\n\n")


def gen_main(f):
    f.write("local def name (a: amino_acid): [13]u8 =\n")
    f.write("  match a\n")
    f.write('    case #methionine    -> "Methionine   "\n')
    f.write('    case #phenylalanine -> "Phenylalanine"\n')
    f.write('    case #leucine       -> "Leucine      "\n')
    f.write('    case #serine        -> "Serine       "\n')
    f.write('    case #tyrosine      -> "Tyrosine     "\n')
    f.write('    case #cysteine      -> "Cysteine     "\n')
    f.write('    case #tryptophan    -> "Tryptophan   "\n\n')

    f.write("def main (strand: []u8): [][13]u8 =\n")
    f.write("  map1 name (proteins strand)\n")
