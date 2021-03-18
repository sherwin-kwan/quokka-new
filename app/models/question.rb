class Question < ApplicationRecord
  belongs_to :quiz
  has_many :possible_answers, dependent: :delete_all
end
