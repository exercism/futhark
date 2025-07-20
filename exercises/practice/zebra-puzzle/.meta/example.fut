type zebra_question = #drinks_water | #owns_zebra

def answer (question: zebra_question): []u8 =
  match question
    case #drinks_water -> "Norwegian"
    case #owns_zebra -> "Japanese"
