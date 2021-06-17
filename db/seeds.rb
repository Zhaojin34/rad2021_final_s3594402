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
    multiple_correct_answers:"false",
    correct_answer:"answer_a",
    tags:[{"name":"Docker"}],
    category:"Docker",
    difficulty:"Medium"
)

History.create(
  score: "3",
  number: "4"
)