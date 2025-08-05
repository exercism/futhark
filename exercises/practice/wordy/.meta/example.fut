
def atoi [n] (word: [n]u8): i32 =
  let (sign, magnitude) = loop (sign, magnitude) = ('+', 0) for i < n - 1 do
    if i == 0 && word[i] == '-' then ('-', magnitude) else
    let digit = word[i] - '0'
    in
      assert (digit < 10) (sign, magnitude * 10 + i32.u8 digit)
  in
    if sign == '+' then magnitude else
    -magnitude

def equal [m] [n] (first: [m]u8) (second: [n]u8): bool =
  if m != n then false else
  let same = loop same = true for i < n do
    if first[i] == second[i] then same else
    false
  in
    same

def find_offsets [n] (question: [n]u8): []i64 =
  if length question == 0 then [] else
  let offsets = loop offsets = [0] for i < n do
    if question[i] != ' ' && question[i] != '?' then offsets else
    if i > 0 && (question[i - 1] == 'd' || question[i - 1] == 't') && (question[i] == ' ') then offsets else
    offsets ++ [i + 1]
  in
    offsets

def question_mark_at_end [n] (word: [n]u8): bool =
  let result = loop result = true for ch in word[0:n - 1] do
    result && ch != '?'
  in
    result && word[n - 1] == '?'

def calculate (first: i32) (operation: u8) (second: i32): i32 =
  match operation
    case '+' -> first + second
    case '-' -> first - second
    case '*' -> first * second
    case '/' -> first / second
    case _ -> assert false 0

def answer (question: []u8): i32 =
  let offsets = assert (question_mark_at_end question) (find_offsets question)
  in
    let (value, operation) = loop (value, operation) = (0, '^') for i < length offsets - 1 do
      let word = question[offsets[i]:offsets[i + 1]]
      in
        if operation == '^' && equal word "What is " then (0, '+') else
        if operation == '.' && equal word "plus " then (value, '+') else
        if operation == '.' && equal word "minus " then (value, '-') else
        if operation == '.' && equal word "multiplied by " then (value, '*') else
        if operation == '.' && equal word "divided by " then (value, '/') else
        assert (i % 2 == 1) (calculate value operation (atoi word), '.')
    in
      assert (operation == '.') value
