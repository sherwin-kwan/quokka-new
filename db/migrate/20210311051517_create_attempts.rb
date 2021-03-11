class CreateAttempts < ActiveRecord::Migration[6.1]
  def change
    create_table :attempts do |t|
      t.timestamp :started_at
      t.timestamp :finished_at

      t.timestamps
    end
  end
end
