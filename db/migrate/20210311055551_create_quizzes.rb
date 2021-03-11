class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.text :description
      t.boolean :is_public

      t.timestamps
    end
  end
end
