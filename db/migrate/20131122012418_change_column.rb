class ChangeColumn < ActiveRecord::Migration
  def up
  	change_column :ls_college_requirements, :reading_and_composition, :boolean, :default => false
  	change_column :ls_college_requirements, :quantitative_reasoning , :boolean, :default => false
  	change_column :ls_college_requirements, :foreign_language_breadth , :boolean, :default => false
  	change_column :ls_college_requirements, :arts_and_literature , :boolean, :default => false
  	change_column :ls_college_requirements, :biological_science , :boolean, :default => false
  	change_column :ls_college_requirements, :historical_studies , :boolean, :default => false
  	change_column :ls_college_requirements, :international_studies , :boolean, :default => false
  	change_column :ls_college_requirements, :philosophy_and_values , :boolean, :default => false
  	change_column :ls_college_requirements, :physical_science , :boolean, :default => false
  	change_column :ls_college_requirements, :social_and_behavioral_sciences , :boolean, :default => false

  	change_column :university_requirements, :entry_level_writing, :boolean, :default => false
  	change_column :university_requirements, :american_history_and_institutions, :boolean, :default => false

  	change_column :campus_requirements, :american_cultures, :boolean, :default => false
  end

  def down
  end
end
