type relation = #equal | #superlist | #sublist | #unequal

local def is_equal (list_one: []i32) (list_two: []i32): bool =
  let result = loop result = true for i < length list_one do
    result && list_one[i] == list_two[i]
  in
    result

local def is_sublist [m] [n] (list_one: [m]i32) (list_two: [n]i32): bool =
  let result = loop result = false for i in 0...(n - m) do
    result || is_equal list_one list_two[i:i + m]
  in
    result

def compare [m] [n] (list_one: [m]i32) (list_two: [n]i32): relation =
  if m < n && is_sublist list_one list_two then #sublist else
  if m > n && is_sublist list_two list_one then #superlist else
  if m == n && is_equal list_one list_two then #equal else
  #unequal
