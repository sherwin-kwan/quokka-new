class Attempt < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  has_many :user_answers, dependent: :delete_all
end
