class Quiz < ApplicationRecord
  belongs_to :User, dependent: :delete_all
  has_many :questions
end
