# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^"Next"/ then '/users/sign_in'
    when /^the About page$/i then about_path
    when /^the Contact page$/i then contact_path
    when /^Profile page$/i then profile_path
    when /^the Profile page$/i then profile_path
    when /^the Edit Profile page/i then edit_user_registration_path
    when /^the forum page/i then '/forums'
    when /^the job outlook page/i then outlook_path
      
    when /^the Report page$/i then report_path
    when /^the user page $/i then user_root_path
      
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
