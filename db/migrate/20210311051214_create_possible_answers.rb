class CreatePossibleAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :possible_answers do |t|
      t.text :answer_text
      t.boolean :is_correct

      t.timestamps
    end
  end
end
