class UserAnswer < ApplicationRecord
  belongs_to :Attempt, dependent: :delete_all
  belongs_to :possible_answers, dependent: :delete_all
end
