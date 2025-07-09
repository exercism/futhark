def unify (input_base: i32) (digits: []i32): i32 =
  let n = loop n = 0 for digit in digits do
    assert (digit >= 0 && digit < input_base) (n * input_base + digit)
  in
    n

def separate (output_base: i32) (number: i32): []i32 =
  if number == 0 then [0] else
  let (_, a, i) = loop (n, a, i) = (number, replicate 32 0, 32) while n > 0 do
    (n / output_base, a with [i - 1] = n % output_base, i - 1)
  in
    a[i:]

def rebase (input_base: i32) (digits: []i32) (output_base: i32): []i32 =
  assert (input_base >= 2 && output_base >= 2) digits
  |> unify input_base
  |> separate output_base
