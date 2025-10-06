def to_char(n: u8): u8 = n + '0'

def to_string(n: i32): []u8 =
  let string: []u8 = ""
  let (_, string) = loop (n, string) while n > 0 do
    (n // 10, [to_char (u8.i32 (n %% 10))] ++ string)
  in
    string

def number_suffix(n: i32): []u8 =
  let last: i32 = n %% 10
  let second_last: i32 = n // 10 %% 10
  in
    if second_last != 1 && last == 1 then "st"
    else if second_last != 1 && last == 2 then "nd"
    else if second_last != 1 && last == 3 then "rd"
    else "th"

def format (name: []u8) (number: i32): []u8 =
  name ++ ", you are the " ++ (to_string number) ++ (number_suffix number) ++ " customer we serve today. Thank you!"
