

def is_consonant(letter: u8): bool =
  let vowels = 0x1104111 -- bitset representing a e i o u y
  in
    vowels & (1 << i32.u8 (letter - 'a')) == 0

-- word begins with a vowel, or starts with `"xr"` or `"yt"`
def begins_with_vowel [n] (word: [n]u8): bool =
  if is_consonant word[0] then n > 1 && word[0] == 'x' && word[1] == 'r' else
  word[0] != 'y' || (n > 1 && word[1] == 't')

def render [n] (word: [n]u8) (index: i64): []u8 =
  word[index:] ++ word[:index] ++ "ay"

def translate_word [n] (word: [n]u8): []u8 =
  if begins_with_vowel word then render word 0 else
  let index = loop index = 1 while index < n && is_consonant word[index] do
    index + 1
  in
    if index == n || word[index - 1] != 'q' || word[index] != 'u' then render word index else
    render word (index + 1)

def translate [n] (phrase: [n]u8): []u8 =
  let (result, _) = loop (result, begin) = ("", 0) for index < n + 1 do
    if index < n && phrase[index] - 'a' < 26 then (result, begin) else
    (result ++ " " ++ translate_word phrase[begin:index], index + 1)
  in
    result[1:]
