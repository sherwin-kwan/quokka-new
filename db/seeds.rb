# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.seed(:username,
{fname: 'Aleksandar', lname: 'Dmitrovic', username: 'AleksandarD'},
{fname: 'Alfonso', lname: 'Lotina', username: 'AlfonsoL'},
{fname: 'Sher', lname: 'kwan', username: 'skwan'}
)

Quiz.seed(:user,
{user: User.find_by(username: 'AleksandarD'), title: 'Country Capitals Quiz', description: 'How well do you know country capitals?', is_public: true}, 
{user: User.find_by(username: 'AlfonsoL'), title: 'Harry Potter Trivia', description: 'For all potterheads out there', is_public: false},
{user: User.find_by(username: 'skwan'), title: 'US Presidents', description: 'Test your presidential knowledge', is_public: true}
)