def combine2 (first: []u8) (second: []u8): []u8 =
  if length first == 0 then second else
  if length second == 0 then first else
  first ++ " " ++ second

def combine4 (first: []u8) (second: []u8) (third: []u8) (fourth: []u8): []u8 =
  combine2 (combine2 first second) (combine2 third fourth)

def name (number: i32): []u8 =
  if number == 1 then "one" else
  if number == 2 then "two" else
  if number == 3 then "three" else
  if number == 4 then "four" else
  if number == 5 then "five" else
  if number == 6 then "six" else
  if number == 7 then "seven" else
  if number == 8 then "eight" else
  if number == 9 then "nine" else
  if number == 10 then "ten" else
  if number == 11 then "eleven" else
  if number == 12 then "twelve" else
  if number == 13 then "thirteen" else
  if number == 14 then "fourteen" else
  if number == 15 then "fifteen" else
  if number == 16 then "sixteen" else
  if number == 17 then "seventeen" else
  if number == 18 then "eighteen" else
  if number == 19 then "nineteen" else
  if number == 20 then "twenty" else
  if number == 30 then "thirty" else
  if number == 40 then "forty" else
  if number == 50 then "fifty" else
  if number == 60 then "sixty" else
  if number == 70 then "seventy" else
  if number == 80 then "eighty" else
  if number == 90 then "ninety" else
  assert (false) ""

def two_digit (number: i32): []u8 =
	if number < 20 || number % 10 == 0 then name number else
	(name (number / 10 * 10)) ++ "-" ++ (name (number % 10))

def three_digit (number: i32): []u8 =
  let hundreds = number / 100
  let units = number % 100
  in
    if hundreds == 0 then two_digit units else
    if units == 0 then (name hundreds) ++ " hundred" else
    (name hundreds) ++ " hundred " ++ (two_digit units)

def chunk (number: i32) (suffix: []u8): []u8 =
	if number == 0 then "" else
	(three_digit number) ++ suffix

def say (number: i64): []u8 =
  if assert ((number >= 0) && (number < 1000000000000i64)) (number == 0) then "zero" else
  let billions = i32.i64 (number / 1000000000)
  let millions = i32.i64 (number / 1000000 % 1000)
  let thousands = i32.i64 (number / 1000 % 1000)
  let units = i32.i64 (number % 1000)
  in
    combine4 (chunk billions " billion") (chunk millions " million") (chunk thousands " thousand") (chunk units "")
