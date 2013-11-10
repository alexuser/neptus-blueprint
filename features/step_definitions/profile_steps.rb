Then /^(?:|I )should not see \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)
  assert !page.has_xpath?('//*', :text => regexp)
end