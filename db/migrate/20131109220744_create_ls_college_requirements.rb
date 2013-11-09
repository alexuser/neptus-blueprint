class CreateLsCollegeRequirements < ActiveRecord::Migration
  def change
    create_table :ls_college_requirements do |t|
      t.integer :course_id
      t.boolean :reading_and_composition
      t.boolean :quantitative_reasoning
      t.boolean :foreign_language_breadth
      t.boolean :arts_and_literature
      t.boolean :biological_science
      t.boolean :historical_studies
      t.boolean :international_studies
      t.boolean :philosophy_and_values
      t.boolean :physical_science
      t.boolean :social_and_behavioral_sciences

      t.timestamps
    end
  end
end
