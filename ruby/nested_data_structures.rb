
classroom = {
  first_row: {
    number_of_students: 5,
    supplies: {
      pencils: 3,
      notebooks: 4,
      crayons: 7,
    },
    books: ["Magic Tree House",
            "One Fish, Two Fish, Red Fish, Blue Fish"
          ]
  },

  second_row: {
    number_of_students: 3,
    supplies: {
      pencils: 12,
      notebooks: 8,
      crayons: 9,
    },
    books: ["Chicka Chicka Boom Boom",
            "Harry Potter and the Sorcerer's Stone", "Harry Potter and the Prisoner of Azkaban"
          ]
  },
   third_row: {
    number_of_students: 5,
    supplies: {
      pencils: 1,
      notebooks: 0,
      crayons: 22,
    },
    books: ["The Cat in the Hat"

          ]
  }
}
puts classroom

puts classroom[:third_row][:number_of_students]
puts classroom[:first_row][:supplies][:pencils]
puts classroom[:second_row][:books][1]
puts classroom[:second_row][:supplies][:notebooks]

