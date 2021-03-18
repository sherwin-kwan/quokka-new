class User < ApplicationRecord
  has_many :quizzes, dependent: :delete_all
  has_many :questions, through: :quizzes
end
