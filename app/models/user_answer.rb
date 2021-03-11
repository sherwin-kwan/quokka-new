class UserAnswer < ApplicationRecord
  belongs_to :Attempt
  belongs_to :possible_answers
end
