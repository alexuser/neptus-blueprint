class AddProfileToUser < ActiveRecord::Migration
  def change
  	# university requirements
  	add_column :users, :entry_level_requirement,           :boolean, :default => false
  	add_column :users, :american_history_and_institutions, :boolean, :default => false

  	# campus requirement 
  	add_column :users, :american_cultures,              :boolean, :default => false
  	
  	# LS College requirements 
  	add_column :users, :reading_and_composition,        :boolean, :default => false
    add_column :users, :quantitative_reasoning,         :boolean, :default => false
    add_column :users, :foreign_language_breadth,       :boolean, :default => false
    add_column :users, :arts_and_literature,            :boolean, :default => false
    add_column :users, :biological_science,             :boolean, :default => false
    add_column :users, :historical_studies,             :boolean, :default => false
    add_column :users, :international_studies,          :boolean, :default => false
    add_column :users, :philosophy_and_values,          :boolean, :default => false
    add_column :users, :physical_science,               :boolean, :default => false
    add_column :users, :social_and_behavioral_sciences, :boolean, :default => false
  end
end
