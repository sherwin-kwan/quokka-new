class PossibleAnswer < ApplicationRecord
  belongs_to :question
  has_many :user_answers, dependent: :delete_all
end
