class Attempt < ApplicationRecord
  belongs_to :quizzes
  belongs_to :User
  has_many :user_answers, dependent: :delete_all
end
