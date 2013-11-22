class AddMajorCourses < ActiveRecord::Migration
  def up
  	c1 = Course.create(:name => "CS 61A")
  	c2 = Course.create(:name => "CS 61B ")
  	c3 = Course.create(:name => "CS 61C")
  	c4 = Course.create(:name => "Math 1A")
  	c5 = Course.create(:name => "Math 1B")
  	c6 = Course.create(:name => "Math 54")
  	c7 = Course.create(:name => "CS 70")
  	c8 = Course.create(:name => "EE 20")
  	c9 = Course.create(:name => "EE 40")
  	c10 = Course.create(:name => "EE 42")
  	c11 = Course.create(:name => "CS 170")
  	c12 = Course.create(:name => "CS 162")
  	c13 = Course.create(:name => "CS 150")
  	c14 = Course.create(:name => "CS 152")
  	c15 = Course.create(:name => "CS 160")
  	c16 = Course.create(:name => "CS 161")
  	c17 = Course.create(:name => "CS 164")
  	c18 = Course.create(:name => "CS 169")
  	c19 = Course.create(:name => "CS 184")
  	c20 = Course.create(:name => "CS 186")
  	c21 = Course.create(:name => "CS 188")
  end

  def down
  end
end
