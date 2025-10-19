type position = (i32, i32)

type direction = #north | #east | #south | #west

type state = (position, direction)

def move (start: state) (instructions: []u8): state = ???
