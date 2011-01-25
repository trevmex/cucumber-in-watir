# https://github.com/napcs/cucumber_watir/raw/master/features/support/paths.rb

module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in webrat_steps.rb
  #
  def path_to(page_name)
    case page_name
    
    
    when /the homepage/
      '/'

    # Add more mappings here.
    # Here is a more fancy example:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    when /the Fancast homepage/
        'http://local.fancast.com:8080/'
    
    when /the Fancast MyTV Settings page/
    	'http://local.fancast.com:8080/mytv/settings'
    
    when /the National Settings page/
    	'http://local.fancast.com:8080/myfancast/account?setComcast=false'

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
