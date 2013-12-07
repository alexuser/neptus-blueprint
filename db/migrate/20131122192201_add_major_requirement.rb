class AddMajorRequirement < ActiveRecord::Migration
  def up
  	# to be honest, this structure sucks ass, but i'm tired and also midterms to prepare
  	# lower division requirements
  	add_column :users, :cs_sixtyonea, :boolean, :default => false
  	add_column :users, :cs_sixtyoneb, :boolean, :default => false
  	add_column :users, :cs_sixtyonec, :boolean, :default => false
  	add_column :users, :math_onea, :boolean, :default => false
  	add_column :users, :math_oneb, :boolean, :default => false
  	add_column :users, :math_fiftyfour, :boolean, :default => false
  	add_column :users, :cs_seventy, :boolean, :default => false
  	add_column :users, :ee_fourty, :boolean, :default => false
  	add_column :users, :ee_twenty, :boolean, :default => false
  	add_column :users, :ee_fourtytwo, :boolean, :default => false

  	# required courses 
  	add_column :users, :cs_oneseventy, :boolean, :default => false
  	add_column :users, :cs_onesixtytwo, :boolean, :default => false

  	# breadth courses    
  	add_column :users, :cs_onefifty, :boolean, :default => false
  	add_column :users, :cs_onefiftytwo, :boolean, :default => false 
  	add_column :users, :cs_onesixty, :boolean, :default => false
  	add_column :users, :cs_onesixtyone, :boolean, :default => false
  	add_column :users, :cs_onesixtyfour, :boolean, :default => false
  	add_column :users, :cs_onesixtynine, :boolean, :default => false
  	add_column :users, :cs_oneeightyfour, :boolean, :default => false
  	add_column :users, :cs_oneeightysix, :boolean, :default => false
  	add_column :users, :cs_oneeightyeight, :boolean, :default => false
  end

  def down
  end
end
