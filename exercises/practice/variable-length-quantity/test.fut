import "variable_length_quantity"

-- zero
-- ==
-- entry: test_encode
-- input { [0u32] }
-- output { [0] }

-- arbitrary single byte
-- ==
-- entry: test_encode
-- input { [64u32] }
-- output { [64] }

-- asymmetric single byte
-- ==
-- entry: test_encode
-- input { [83u32] }
-- output { [83] }

-- largest single byte
-- ==
-- entry: test_encode
-- input { [127u32] }
-- output { [127] }

-- smallest double byte
-- ==
-- entry: test_encode
-- input { [128u32] }
-- output { [129, 0] }

-- arbitrary double byte
-- ==
-- entry: test_encode
-- input { [8192u32] }
-- output { [192, 0] }

-- asymmetric double byte
-- ==
-- entry: test_encode
-- input { [173u32] }
-- output { [129, 45] }

-- largest double byte
-- ==
-- entry: test_encode
-- input { [16383u32] }
-- output { [255, 127] }

-- smallest triple byte
-- ==
-- entry: test_encode
-- input { [16384u32] }
-- output { [129, 128, 0] }

-- arbitrary triple byte
-- ==
-- entry: test_encode
-- input { [1048576u32] }
-- output { [192, 128, 0] }

-- asymmetric triple byte
-- ==
-- entry: test_encode
-- input { [120220u32] }
-- output { [135, 171, 28] }

-- largest triple byte
-- ==
-- entry: test_encode
-- input { [2097151u32] }
-- output { [255, 255, 127] }

-- smallest quadruple byte
-- ==
-- entry: test_encode
-- input { [2097152u32] }
-- output { [129, 128, 128, 0] }

-- arbitrary quadruple byte
-- ==
-- entry: test_encode
-- input { [134217728u32] }
-- output { [192, 128, 128, 0] }

-- asymmetric quadruple byte
-- ==
-- entry: test_encode
-- input { [3503876u32] }
-- output { [129, 213, 238, 4] }

-- largest quadruple byte
-- ==
-- entry: test_encode
-- input { [268435455u32] }
-- output { [255, 255, 255, 127] }

-- smallest quintuple byte
-- ==
-- entry: test_encode
-- input { [268435456u32] }
-- output { [129, 128, 128, 128, 0] }

-- arbitrary quintuple byte
-- ==
-- entry: test_encode
-- input { [4278190080u32] }
-- output { [143, 248, 128, 128, 0] }

-- asymmetric quintuple byte
-- ==
-- entry: test_encode
-- input { [2254790917u32] }
-- output { [136, 179, 149, 194, 5] }

-- maximum 32-bit integer input
-- ==
-- entry: test_encode
-- input { [4294967295u32] }
-- output { [143, 255, 255, 255, 127] }

-- two single-byte values
-- ==
-- entry: test_encode
-- input { [64u32, 127u32] }
-- output { [64, 127] }

-- two multi-byte values
-- ==
-- entry: test_encode
-- input { [16384u32, 1193046u32] }
-- output { [129, 128, 0, 200, 232, 86] }

-- many multi-byte values
-- ==
-- entry: test_encode
-- input { [8192u32, 1193046u32, 268435455u32, 0u32, 16383u32, 16384u32] }
-- output { [192, 0, 200, 232, 86, 255, 255, 255, 127, 0, 255, 127, 129, 128, 0] }

-- one byte
-- ==
-- entry: test_decode
-- input { [127] }
-- output { [127u32] }

-- two bytes
-- ==
-- entry: test_decode
-- input { [192, 0] }
-- output { [8192u32] }

-- three bytes
-- ==
-- entry: test_decode
-- input { [255, 255, 127] }
-- output { [2097151u32] }

-- four bytes
-- ==
-- entry: test_decode
-- input { [129, 128, 128, 0] }
-- output { [2097152u32] }

-- maximum 32-bit integer
-- ==
-- entry: test_decode
-- input { [143, 255, 255, 255, 127] }
-- output { [4294967295u32] }

-- incomplete sequence causes error
-- ==
-- entry: test_decode
-- input { [255] }
-- error: Error*

-- incomplete sequence causes error, even if value is zero
-- ==
-- entry: test_decode
-- input { [128] }
-- error: Error*

-- multiple values
-- ==
-- entry: test_decode
-- input { [192, 0, 200, 232, 86, 255, 255, 255, 127, 0, 255, 127, 129, 128, 0] }
-- output { [8192u32, 1193046u32, 268435455u32, 0u32, 16383u32, 16384u32] }

entry test_encode (integers: []u32): []i32 =
  encode integers

entry test_decode (integers: []i32): []u32 =
  decode integers
