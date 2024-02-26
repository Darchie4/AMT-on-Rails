class CreateSkillLevels < ActiveRecord::Migration[7.1]
  def change
    create_table :skill_levels do |t|
      t.string :display_name
      t.integer :sorting_number

      t.timestamps
    end
  end
end
