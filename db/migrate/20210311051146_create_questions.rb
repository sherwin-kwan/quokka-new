class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.integer :question_num
      t.text :text

      t.timestamps
    end
  end
end
