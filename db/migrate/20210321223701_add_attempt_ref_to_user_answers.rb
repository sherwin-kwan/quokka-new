class AddAttemptRefToUserAnswers < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_answers, :attempt, null: false, foreign_key: true
  end
end
