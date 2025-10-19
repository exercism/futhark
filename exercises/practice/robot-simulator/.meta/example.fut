type position = (i32, i32)

type direction = #north | #east | #south | #west

type state = (position, direction)

def right (s: state): state =
  let x = s.0.0
  let y = s.0.1
  in
    match (s.1)
      case #north -> ((x, y), #east)
      case #east  -> ((x, y), #south)
      case #south -> ((x, y), #west)
      case #west  -> ((x, y), #north)

def left (s: state): state =
  let x = s.0.0
  let y = s.0.1
  in
    match (s.1)
      case #north -> ((x, y), #west)
      case #east  -> ((x, y), #north)
      case #south -> ((x, y), #east)
      case #west  -> ((x, y), #south)

def advance (s: state): state =
  let x = s.0.0
  let y = s.0.1
  in
    match (s.1)
      case #north -> ((x, y + 1), #north)
      case #east  -> ((x + 1, y), #east)
      case #south -> ((x, y - 1), #south)
      case #west  -> ((x - 1, y), #west)

def move (start: state) (instructions: []u8): state =
  let s = loop s = start for instruction in instructions do
    match (instruction)
      case 'R' -> right s
      case 'L' -> left s
      case 'A' -> advance s
      case _ -> assert false s
  in
    s
