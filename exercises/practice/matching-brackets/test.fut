import "matching_brackets"

-- paired square brackets
-- ==
-- input { "[]" }
-- output { true }

-- empty string
-- ==
-- input { "" }
-- output { true }

-- unpaired brackets
-- ==
-- input { "[[" }
-- output { false }

-- wrong ordered brackets
-- ==
-- input { "}{" }
-- output { false }

-- wrong closing bracket
-- ==
-- input { "{]" }
-- output { false }

-- paired with whitespace
-- ==
-- input { "{ }" }
-- output { true }

-- partially paired brackets
-- ==
-- input { "{[])" }
-- output { false }

-- simple nested brackets
-- ==
-- input { "{[]}" }
-- output { true }

-- several paired brackets
-- ==
-- input { "{}[]" }
-- output { true }

-- paired and nested brackets
-- ==
-- input { "([{}({}[])])" }
-- output { true }

-- unopened closing brackets
-- ==
-- input { "{[)][]}" }
-- output { false }

-- unpaired and nested brackets
-- ==
-- input { "([{])" }
-- output { false }

-- paired and wrong nested brackets
-- ==
-- input { "[({]})" }
-- output { false }

-- paired and wrong nested brackets but innermost are correct
-- ==
-- input { "[({}])" }
-- output { false }

-- paired and incomplete brackets
-- ==
-- input { "{}[" }
-- output { false }

-- too many closing brackets
-- ==
-- input { "[]]" }
-- output { false }

-- early unexpected brackets
-- ==
-- input { ")()" }
-- output { false }

-- early mismatched brackets
-- ==
-- input { "{)()" }
-- output { false }

-- math expression
-- ==
-- input { "(((185 + 223.85) * 15) - 543)/2" }
-- output { true }

-- complex latex expression
-- ==
-- input { "\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)" }
-- output { true }

let main (value: []u8): bool =
  is_paired value
