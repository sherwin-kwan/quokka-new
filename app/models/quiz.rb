class Quiz < ApplicationRecord
  has_many :questions, dependent: :delete_all
  has_many :attempts, dependent: :delete_all
  belongs_to :user
end
