# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Quiz.create(
    "id":814,
    question:"How to remove unused data (all unused containers, networks, images (both dangling and unreferenced), and optionally, volumes) in Docker.,",
    description:null,
    answers:{
      answer_a:"docker system --prune",
      answer_b:"docker system prune sys",
      answer_c:"docker system prune",
      answer_d:null,
      answer_e:null,
      answer_f:null
    },
    multiple_correct_answers:"false",
    correct_answers:{
      answer_a_correct:"false",
      answer_b_correct:"false",
      answer_c_correct:"true",
      answer_d_correct:"false",
      answer_e_correct:"false",
      answer_f_correct:"false"
    },
    correct_answer:"answer_a",
    explanation:null,
    tip:null,
    tags:[{"name":"Docker"}],
    category:"Docker",
    difficulty:"Medium"
)

History.create(
  score: "3",
  number: "4"
)