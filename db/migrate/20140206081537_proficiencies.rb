class Proficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.belongs_to :user
      t.belongs_to :skill
      t.integer :years
      t.boolean :formal

      t.timestamps
    end

    add_index :proficiencies, :user_id
    add_index :proficiencies, :skill_id
  end
end
