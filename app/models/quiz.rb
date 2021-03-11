class Quiz < ApplicationRecord
  belongs_to :User
  has_many :questions

end
