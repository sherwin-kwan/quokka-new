class User < ApplicationRecord
  has_many :quizzes, dependent: :delete_all
end
