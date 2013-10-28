class CreateCourses < ActiveRecord::Migration
  def up
    create_table :courses do |t|
      t.string :course_description
      t.string :course_number
      t.string :course_title
      t.string :course_uid
      t.string :department_code
      t.string :lower_units
      t.string :sub_department_code
      t.string :upper_units
      t.string :uri
    end
  end

  def down
    drop_table :courses
  end
end
