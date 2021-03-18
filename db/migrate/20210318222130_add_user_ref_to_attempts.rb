class AddUserRefToAttempts < ActiveRecord::Migration[6.1]
  def change
    add_reference :attempts, :user, null: false, foreign_key: true
  end
end
