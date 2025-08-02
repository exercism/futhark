
def sort [n] (array: [n]i32): [n]i32 =
  let a = loop a = copy array for i in 1..<n do
    let ai = a[i]
    let (a, j) = loop (a, j) = (a, i) while j > 0 && a[j - 1] > ai do
      (a with [j] = a[j - 1], j - 1)
    in
      a with [j] = ai
  in
    a

def total (dice: [5]i32): i32 =
  foldl (\x -> \y -> x + y) 0 dice

def ones (dice: [5]i32): i32 =
  foldl (\x -> \y -> if y == 1 then x + y else x) 0 dice

def twos (dice: [5]i32): i32 =
  foldl (\x -> \y -> if y == 2 then x + y else x) 0 dice

def threes (dice: [5]i32): i32 =
  foldl (\x -> \y -> if y == 3 then x + y else x) 0 dice

def fours (dice: [5]i32): i32 =
  foldl (\x -> \y -> if y == 4 then x + y else x) 0 dice

def fives (dice: [5]i32): i32 =
  foldl (\x -> \y -> if y == 5 then x + y else x) 0 dice

def sixes (dice: [5]i32): i32 =
  foldl (\x -> \y -> if y == 6 then x + y else x) 0 dice

def yacht (dice: [5]i32): i32 =
  if dice[0] != dice[4] then 0 else
  50

def choice (dice: [5]i32): i32 =
  total dice

def full_house (dice: [5]i32): i32 =
  if dice[0] == dice[4] || dice[0] != dice[1] || dice[3] != dice[4] || (dice[1] != dice[2] && dice[2] != dice[3]) then 0 else
  total dice

def four_of_a_kind (dice: [5]i32): i32 =
  if dice[0] != dice[3] && dice[1] != dice[4] then 0 else
  4 * dice[2]

def big_straight (dice: [5]i32): i32 =
  if dice[0] != 2 || dice[1] != 3 || dice[2] != 4 || dice[3] != 5 || dice[4] != 6 then 0 else
  30

def little_straight (dice: [5]i32): i32 =
  if dice[0] != 1 || dice[1] != 2 || dice[2] != 3 || dice[3] != 4 || dice[4] != 5 then 0 else
  30

def score4 (dice: [5]i32) (category0: u8): i32 =
  if category0 == 'o' then ones dice else
  if category0 == 't' then twos dice else
  assert false 0

def score5 (dice: [5]i32) (category2: u8): i32 =
  if category2 == 'u' then fours dice else
  if category2 == 'v' then fives dice else
  if category2 == 'x' then sixes dice else
  if category2 == 'c' then yacht dice else
  assert false 0

def score6 (dice: [5]i32) (category4: u8): i32 =
  if category4 == 'e' then threes dice else
  if category4 == 'c' then choice dice else
  assert false 0

def score (dice: [5]i32) (category: []u8): i32 =
  let dice = sort dice
  in
    match (length category)
      case 4 -> score4 dice category[0]
      case 5 -> score5 dice category[2]
      case 6 -> score6 dice category[4]
      case 10 -> full_house dice
      case 12 -> big_straight dice
      case 14 -> four_of_a_kind dice
      case 15 -> little_straight dice
      case _ -> assert false 0
