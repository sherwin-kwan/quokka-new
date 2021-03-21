class AddPossibleAnswerRefToUserAnswers < ActiveRecord::Migration[6.1]
  def change
    add_reference :user_answers, :possible_answer, null: false, foreign_key: true
  end
end
