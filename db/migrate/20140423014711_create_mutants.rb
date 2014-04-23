class CreateMutants < ActiveRecord::Migration
  def change
    create_table :mutants do |t|
      t.string :name
      t.string :power
      t.integer :team_id

      t.timestamps
    end
  end
end
