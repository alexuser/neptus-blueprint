class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cs_conefourtynine, :boolean, :default => false
  end
end
