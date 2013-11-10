Given /the following colleges existed/ do |colleges_table|
  colleges_table.hashes.each do |college|
    College.create!(college)
  end
end

Given /the following majors existed/ do |majors_table|
  majors_table.hashes.each do |major|
    Major.create!(major)
  end
end

Then /I should see "(.*)" in "_major_id"/ do |major|
	assert major != "--Select a Major--" 
end
