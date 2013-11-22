class CreateMajorRequirements < ActiveRecord::Migration
  def change
    create_table :major_requirements do |t|

      t.timestamps
    end
  end
end
