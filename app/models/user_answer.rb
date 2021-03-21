class UserAnswer < ApplicationRecord
  belongs_to :attempt
  belongs_to :possible_answer
end
