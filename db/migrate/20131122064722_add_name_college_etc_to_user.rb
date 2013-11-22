class AddNameCollegeEtcToUser < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :college, :string
  	add_column :users, :entrance_year, :date
  	add_column :users, :expected_year, :date
  	add_column :users, :major, :string
  end
end
