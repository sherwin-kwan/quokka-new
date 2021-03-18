class AddQuizRefToAttempts < ActiveRecord::Migration[6.1]
  def change
    add_reference :attempts, :quiz, null: false, foreign_key: true
  end
end
