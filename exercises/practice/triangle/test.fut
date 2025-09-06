import "triangle"

-- equilateral returns all sides are equal
-- ==
-- entry: test_is_equilateral
-- input { [2.0, 2.0, 2.0] }
-- output { true }

-- equilateral returns any side is unequal
-- ==
-- entry: test_is_equilateral
-- input { [2.0, 3.0, 2.0] }
-- output { false }

-- equilateral returns no sides are equal
-- ==
-- entry: test_is_equilateral
-- input { [5.0, 4.0, 6.0] }
-- output { false }

-- equilateral returns all zero sides is not a triangle
-- ==
-- entry: test_is_equilateral
-- input { [0.0, 0.0, 0.0] }
-- output { false }

-- equilateral returns sides may be floats
-- ==
-- entry: test_is_equilateral
-- input { [0.5, 0.5, 0.5] }
-- output { true }

-- isosceles returns last two sides are equal
-- ==
-- entry: test_is_isosceles
-- input { [3.0, 4.0, 4.0] }
-- output { true }

-- isosceles returns first two sides are equal
-- ==
-- entry: test_is_isosceles
-- input { [4.0, 4.0, 3.0] }
-- output { true }

-- isosceles returns first and last sides are equal
-- ==
-- entry: test_is_isosceles
-- input { [4.0, 3.0, 4.0] }
-- output { true }

-- equilateral triangles are also isosceles
-- ==
-- entry: test_is_isosceles
-- input { [4.0, 4.0, 4.0] }
-- output { true }

-- isosceles returns no sides are equal
-- ==
-- entry: test_is_isosceles
-- input { [2.0, 3.0, 4.0] }
-- output { false }

-- isosceles returns first triangle inequality violation
-- ==
-- entry: test_is_isosceles
-- input { [1.0, 1.0, 3.0] }
-- output { false }

-- isosceles returns second triangle inequality violation
-- ==
-- entry: test_is_isosceles
-- input { [1.0, 3.0, 1.0] }
-- output { false }

-- isosceles returns third triangle inequality violation
-- ==
-- entry: test_is_isosceles
-- input { [3.0, 1.0, 1.0] }
-- output { false }

-- isosceles returns sides may be floats
-- ==
-- entry: test_is_isosceles
-- input { [0.5, 0.4, 0.5] }
-- output { true }

-- scalene returns no sides are equal
-- ==
-- entry: test_is_scalene
-- input { [5.0, 4.0, 6.0] }
-- output { true }

-- scalene returns all sides are equal
-- ==
-- entry: test_is_scalene
-- input { [4.0, 4.0, 4.0] }
-- output { false }

-- scalene returns first and second sides are equal
-- ==
-- entry: test_is_scalene
-- input { [4.0, 4.0, 3.0] }
-- output { false }

-- scalene returns first and third sides are equal
-- ==
-- entry: test_is_scalene
-- input { [3.0, 4.0, 3.0] }
-- output { false }

-- scalene returns second and third sides are equal
-- ==
-- entry: test_is_scalene
-- input { [4.0, 3.0, 3.0] }
-- output { false }

-- scalene returns may not violate triangle inequality
-- ==
-- entry: test_is_scalene
-- input { [7.0, 3.0, 2.0] }
-- output { false }

-- scalene returns sides may be floats
-- ==
-- entry: test_is_scalene
-- input { [0.5, 0.4, 0.6] }
-- output { true }

entry test_is_equilateral (sides: [3]f64): bool =
  is_equilateral sides

entry test_is_isosceles (sides: [3]f64): bool =
  is_isosceles sides

entry test_is_scalene (sides: [3]f64): bool =
  is_scalene sides
