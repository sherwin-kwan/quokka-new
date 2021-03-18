# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.seed(:username,
# {fname: 'Aleksandar', lname: 'Dmitrovic', username: 'AleksandarD'},
# {fname: 'Alfonso', lname: 'Lotina', username: 'AlfonsoL'},
# {fname: 'Sher', lname: 'kwan', username: 'skwan'}
# )

# Quiz.seed(:title,
# { title: 'Country Capitals Quiz', description: 'How well do you know country capitals?', is_public: true}, 
# { title: 'Harry Potter Trivia', description: 'For all potterheads out there', is_public: false},
# { title: 'US Presidents', description: 'Test your presidential knowledge', is_public: true}
# )

# Aleksandar = User.find_or_create_by! fname: 'Aleksandar'

# Aleksandar.quizzes.create!(
#   [
#     {
#       title: 'Country Capitals Quiz',
#       description: 'How well do you know country capitals?',
#       is_public: true
#     }
#   ]
# )

# users seeds
John = User.create!(
      username: "john.doe@example.com",
      fname: "John",
      lname: "Doe"
)

Jane = User.create!(
  username: "jane.doe@example.com",
  fname: "Jane",
  lname: "Doe"
)

# quiz seeds

Country = Quiz.create!(
  user: John, 
  title: 'Country Capitals Quiz', 
  description: 'How well do you know country capitals?', 
  is_public: true
)

Harry = Quiz.create!(
  user: Jane, 
  title: 'Harry Potter Trivia', 
  description: 'For all potterheads out there', 
  is_public: false
)

# questions seeds

One = Question.create!(
  question_num: 1,
  quiz: Country,
  text: 'What is the capital of Canada?'
)

Two = Question.create!(
  question_num: 1,
  quiz: Harry,
  text: 'Who is he who must not be named?'
)

