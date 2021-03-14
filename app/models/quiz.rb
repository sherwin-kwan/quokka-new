class Quiz < ApplicationRecord
  belongs_to :User
  has_many :questions, dependent: :delete_all
end
