class ChangeUserToBeReferencesInQuizzes < ActiveRecord::Migration[6.1]
    def up
      change_column :quizzes, :user, :references
    end
  
    def down
      change_column :quizzes, :user, :string
    end
end
