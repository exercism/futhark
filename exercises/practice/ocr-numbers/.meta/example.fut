
def convert_digit (first: []u8) (second: []u8) (third: []u8) (fourth: []u8): u8 =
  if fourth[0:3] != "   " then '?' else
  if first[0:3] == " _ " && second[0:3] == "| |" && third[0:3] == "|_|" then '0' else
  if first[0:3] == "   " && second[0:3] == "  |" && third[0:3] == "  |" then '1' else
  if first[0:3] == " _ " && second[0:3] == " _|" && third[0:3] == "|_ " then '2' else
  if first[0:3] == " _ " && second[0:3] == " _|" && third[0:3] == " _|" then '3' else
  if first[0:3] == "   " && second[0:3] == "|_|" && third[0:3] == "  |" then '4' else
  if first[0:3] == " _ " && second[0:3] == "|_ " && third[0:3] == " _|" then '5' else
  if first[0:3] == " _ " && second[0:3] == "|_ " && third[0:3] == "|_|" then '6' else
  if first[0:3] == " _ " && second[0:3] == "  |" && third[0:3] == "  |" then '7' else
  if first[0:3] == " _ " && second[0:3] == "|_|" && third[0:3] == "|_|" then '8' else
  if first[0:3] == " _ " && second[0:3] == "|_|" && third[0:3] == " _|" then '9' else
  '?'

def convert_row (rows: [][]u8): []u8 =
  let first = rows[0]
  let second = rows[1]
  let third = rows[2]
  let fourth = rows[3]
  in
    "," ++ tabulate ((length first) / 3) (\j -> convert_digit first[3*j:] second[3*j:] third[3*j:] fourth[3*j:])

def convert (rows: [][]u8): []u8 =
  let r = length rows
  let c = length (rows[0])
  let result = loop result = assert (r % 4 == 0 && c % 3 == 0) "" for i in iota (r / 4) do
    result ++ (convert_row rows[4*i:])
  in result[1:]
