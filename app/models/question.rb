class Question < ApplicationRecord
  belongs_to :quizzes
  has_many :possible_answers
end
