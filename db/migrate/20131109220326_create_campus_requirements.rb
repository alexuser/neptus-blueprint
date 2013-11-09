class CreateCampusRequirements < ActiveRecord::Migration
  def change
    create_table :campus_requirements do |t|
      t.integer :course_id
      t.boolean :american_cultures

      t.timestamps
    end
  end
end
