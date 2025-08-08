
def equal [m] [n] (first: [m]u8) (second: [n]u8): bool =
  if m != n then false else
  let same = loop same = true for i < n do
    if first[i] == second[i] then same else
    false
  in
    same

def write (start: i64) (len: i64) (value: i32) (buffer: *[]u8): *[]u8 =
  let (buffer, _) = loop (buffer, value) = (buffer, value) for i < len do
    let digit = '0' + u8.i32 (value % 10)
    in
      (buffer with [start + len - 1 - i] = digit, value / 10)
  in
    buffer

def is_leap (year: i32): bool =
  (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0))

def days_in_month (year: i32) (month: i32): i32 =
  match month
    case 1 -> 31
    case 2 -> if is_leap year then 29 else 28
    case 3 -> 31
    case 4 -> 30
    case 5 -> 31
    case 6 -> 30
    case 7 -> 31
    case 8 -> 31
    case 9 -> 30
    case 10 -> 31
    case 11 -> 30
    case 12 -> 31
    case _ -> assert false 0

def week_concludes (year: i32) (month: i32) (week: []u8): i32 =
  if equal week "first" then 7 else
  if equal week "second" then 14 else
  if equal week "third" then 21 else
  if equal week "fourth" then 28 else
  if equal week "teenth" then 19 else
  if equal week "last" then days_in_month year month else
  assert false 0

def required_day (dayofweek: []u8): i32 =
  if equal dayofweek "Monday" then 0 else
  if equal dayofweek "Tuesday" then 1 else
  if equal dayofweek "Wednesday" then 2 else
  if equal dayofweek "Thursday" then 3 else
  if equal dayofweek "Friday" then 4 else
  if equal dayofweek "Saturday" then 5 else
  if equal dayofweek "Sunday" then 6 else
  assert false 0

def month_offset (month: i32): i32 =
  match month
    case 1 -> 307  -- offset from the end of February of previous year
    case 2 -> 338
    case 3 -> 1
    case 4 -> 32
    case 5 -> 62
    case 6 -> 93
    case 7 -> 123
    case 8 -> 154
    case 9 -> 185
    case 10 -> 215
    case 11 -> 246
    case 12 -> 276
    case _ -> assert false 0

def concluding_day (year: i32) (month: i32) (dayofmonth: i32): i32 =
  let year = if month < 3 then year - 1 else year
  in
    (year + (year / 4) - (year / 100) + (year / 400) + (month_offset month) + dayofmonth) % 7

def meetup_dayofmonth (year: i32) (month: i32) (week: []u8) (dayofweek: []u8): i32 =
  let day = week_concludes year month week
  let concluding = concluding_day year month day
  let required = required_day dayofweek
  let adjustment = if concluding < required then 7 else 0
  in
    day + required - (concluding + adjustment)

def meetup (year: i32) (month: i32) (week: []u8) (dayofweek: []u8): []u8 =
  let dayofmonth = meetup_dayofmonth year month week dayofweek
  in
    (write 0 4 year (write 5 2 month (write 8 2 dayofmonth (replicate 10 '-'))))
