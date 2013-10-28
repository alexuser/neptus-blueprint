Given /the following accounts existed/ do |accounts_table|
	accounts_table.hashes.each do |account|
		User.create!(account)
	end
end


