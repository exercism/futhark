
def next_permutation [n] (a: *[n]i32): *[n]i32 =
  -- Step 1. find j
  let j = loop j = n - 2 while a[j] >= a[j + 1] do
    j - 1
  in

    -- Step 2. increase a[j]
    let l = loop l = n - 1 while a[j] >= a[l] do
      l - 1
    in
      let aj = a[j]
      let al = a[l]
      let a = a with [j] = al with [l] = aj

      -- Step 3. reverse a[j+1] ... a[n-1]
      let (a, _, _) = loop (a, k, l) = (a, j + 1, n - 1) while k < l do
        let ak = a[k]
        let al = a[l]
        in
          (a with [k] = al with [l] = ak, k + 1, l - 1)
      in
        a

def not_adjacent (i: i32) (j: i32): bool =
  i + 1 != j && j + 1 != i

type zebra_question = #drinks_water | #owns_zebra

def answer(question: zebra_question): []u8 =
  let (solution, _) = loop (solution, nationalities) = ("", [0, 1, 2, 3, 4, 5]) while length solution == 0 do
    let englishman = nationalities[1]
    let japanese = nationalities[2]
    let norwegian = nationalities[3]
    let spaniard = nationalities[4]
    let ukrainian = nationalities[5]
    in

    -- 10. The Norwegian lives in the first house.
    if norwegian != 1 then ("", next_permutation nationalities) else
    let (solution2, _) = loop (solution2, colors) = ("", [0, 1, 2, 3, 4, 5]) while colors[0] == 0 && length solution2 == 0 do
      let blue = colors[1]
      let green = colors[2]
      let ivory = colors[3]
      let red = colors[4]
      let yellow = colors[5]
      in

      -- 2. The Englishman lives in the red house.
      -- 6. The green house is immediately to the right of the ivory house.
      -- 15. The Norwegian lives next to the blue house.
      if englishman != red || green != ivory + 1 || not_adjacent norwegian blue then ("", next_permutation colors) else
      let (solution3, _) = loop (solution3, drinks) = ("", [0, 1, 2, 3, 4, 5]) while drinks[0] == 0 && length solution3 == 0 do
        let coffee = drinks[1]
        let milk = drinks[2]
        let orangeJuice = drinks[3]
        let tea = drinks[4]
        let water = drinks[5]
        in

        -- 4. Coffee is drunk in the green house.
        -- 5. The Ukrainian drinks tea.
        -- 9. Milk is drunk in the middle house.
        if coffee != green || ukrainian != tea || milk != 3 then ("", next_permutation drinks) else
        let (solution4, _) = loop (solution4, hobbies) = ("", [0, 1, 2, 3, 4, 5]) while hobbies[0] == 0 && length solution4 == 0 do
          let reading = hobbies[1]
          let painting = hobbies[2]
          let football = hobbies[3]
          let dancing = hobbies[4]
          let chess = hobbies[5]
          in

          -- 8. The person in the yellow house is a painter.
          -- 13. The person who plays football drinks orange juice.
          -- 14. The Japanese person plays chess.
          if painting != yellow || football != orangeJuice || japanese != chess then ("", next_permutation hobbies) else
          let (solution5, _) = loop (solution5, pets) = ("", [0, 1, 2, 3, 4, 5]) while pets[0] == 0 && length solution5 == 0 do
            let dog = pets[1]
            let fox = pets[2]
            let horse = pets[3]
            let snails = pets[4]
            let zebra = pets[5]
            let selection = match question
              case #drinks_water -> water
              case #owns_zebra -> zebra
            in

            -- 3. The Spaniard owns the dog.
            -- 7. The snail owner likes to go dancing.
            -- 11. The person who enjoys reading lives in the house next to the person with the fox.
            -- 12. The painter's house is next to the house with the horse.
            if spaniard != dog || dancing != snails || not_adjacent reading fox || not_adjacent painting horse then ("", next_permutation pets) else
            if selection == englishman then ("Englishman", [1]) else
            if selection == japanese then ("Japanese", [1]) else
            if selection == norwegian then ("Norwegian", [1]) else
            if selection == spaniard then ("Spaniard", [1]) else
            if selection == ukrainian then ("Ukrainian", [1]) else
            assert false ("", [])
          in
            (solution5, next_permutation hobbies)
        in
          (solution4, next_permutation drinks)
      in
        (solution3, next_permutation colors)
    in
      (solution2, next_permutation nationalities)
  in
    solution

def drinks_water: []u8 =
  answer #drinks_water

def owns_zebra: []u8 =
  answer #owns_zebra
