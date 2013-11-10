Then(/^I should not see "(.*?)"$/) do |regexp|
  regexp = Regexp.new(regexp)

  if page.respond_to? :should
    page.should_not have_xpath('//*', :text => regexp)
  else
    assert error_page.has_xpath?('//*', :text => regexp)
  end
end