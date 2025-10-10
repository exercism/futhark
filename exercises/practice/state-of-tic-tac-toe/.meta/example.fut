type state = #win | #draw | #ongoing | #invalid

local let lines: [8]i32 = [0b000000111, 0b000111000, 0b111000000, 0b001001001, 0b010010010, 0b100100100, 0b001010100, 0b100010001]

local def is_win(bitset: i32): bool =
	any (\line -> ((bitset & line) == line)) lines

def game_state (board: [3][3]u8): state =
  let (count_x, count_o, bitset_x, bitset_o) = loop (count_x, count_o, bitset_x, bitset_o) = (0, 0, 0, 0) for i in 0..<9 do
    match board[i / 3][i % 3]
    	case 'X' -> (count_x + 1, count_o, bitset_x | (1 << i), bitset_o)
    	case 'O' -> (count_x, count_o + 1, bitset_x, bitset_o | (1 << i))
    	case _ -> (count_x, count_o, bitset_x, bitset_o)
  in
    let win_x = is_win bitset_x
    let win_o = is_win bitset_o
    in
    	if count_x > count_o + 1 || count_o > count_x || (win_x && win_o) then #invalid else
    	if win_x || win_o then #win else
    	if count_x + count_o == 9 then #draw else
    	#ongoing
