class Attempt < ApplicationRecord
  belongs_to :quizzes, dependent: :delete_all
  belongs_to :User, , dependent: :delete_all
  has_many :user_answers
end
