class PossibleAnswer < ApplicationRecord
  belongs_to :questions, , dependent: :delete_all
end
