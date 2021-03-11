class Question < ApplicationRecord
  belongs_to :quizzes, dependent: :delete_all
  has_many :possible_answers
end
