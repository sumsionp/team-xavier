class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.date :deadline
      t.integer :team_id

      t.timestamps
    end
  end
end
