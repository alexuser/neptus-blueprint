class CreateUniversityRequirements < ActiveRecord::Migration
  def change
    create_table :university_requirements do |t|
      t.integer :course_id
      t.boolean :entry_level_writing
      t.boolean :american_history_and_institutions

      t.timestamps
    end
  end
end
