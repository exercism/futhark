import "kindergarten_garden"

-- garden with single student
-- ==
-- input  { "RC\nGG" "Alice" }
-- output { ["radishes", "clover  ", "grass   ", "grass   "] }

-- different garden with single student
-- ==
-- input  { "VC\nRC" "Alice" }
-- output { ["violets ", "clover  ", "radishes", "clover  "] }

-- garden with two students
-- ==
-- input  { "VVCG\nVVRC" "Bob" }
-- output { ["clover  ", "grass   ", "radishes", "clover  "] }

-- second student's garden
-- ==
-- input  { "VVCCGG\nVVCCGG" "Bob" }
-- output { ["clover  ", "clover  ", "clover  ", "clover  "] }

-- third student's garden
-- ==
-- input  { "VVCCGG\nVVCCGG" "Charlie" }
-- output { ["grass   ", "grass   ", "grass   ", "grass   "] }

-- for Alice, first student's garden
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "Alice" }
-- output { ["violets ", "radishes", "violets ", "radishes"] }

-- for Bob, second student's garden
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "Bob" }
-- output { ["clover  ", "grass   ", "clover  ", "clover  "] }

-- for Charlie
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "Charlie" }
-- output { ["violets ", "violets ", "clover  ", "grass   "] }

-- for David
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "David" }
-- output { ["radishes", "violets ", "clover  ", "radishes"] }

-- for Eve
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "Eve" }
-- output { ["clover  ", "grass   ", "radishes", "grass   "] }

-- for Fred
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "Fred" }
-- output { ["grass   ", "clover  ", "violets ", "clover  "] }

-- for Ginny
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "Ginny" }
-- output { ["clover  ", "grass   ", "grass   ", "clover  "] }

-- for Harriet
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "Harriet" }
-- output { ["violets ", "radishes", "radishes", "violets "] }

-- for Ileana
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "Ileana" }
-- output { ["grass   ", "clover  ", "violets ", "clover  "] }

-- for Joseph
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "Joseph" }
-- output { ["violets ", "clover  ", "violets ", "grass   "] }

-- for Kincaid, second to last student's garden
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "Kincaid" }
-- output { ["grass   ", "clover  ", "clover  ", "grass   "] }

-- for Larry, last student's garden
-- ==
-- input  { "VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV" "Larry" }
-- output { ["grass   ", "violets ", "clover  ", "violets "] }

def name (p: plant): [8]u8 =
  match p
    case #grass    -> "grass   "
    case #clover   -> "clover  "
    case #radishes -> "radishes"
    case #violets  -> "violets "

def main (diagram: []u8) (student: []u8): [4][8]u8 =
  map1 name (plants diagram student)
