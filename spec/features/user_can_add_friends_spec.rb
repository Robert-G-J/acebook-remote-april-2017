require 'rails_helper'
require 'web_helpers'

RSpec.feature "Users",  type: :feature do

  scenario "sees a list of users", :type => :feature do
    sign_up_friend
    click_on 'Sign Out'
    sign_up
    click_on("Users")
    page.should have_content("friend@example.com")
  end

  scenario "can add a friend", :type => :feature do
    sign_up_friend
    click_on 'Sign Out'
    sign_up
    click_on("Users")
    first(:link, "Add Friend").click
    page.should have_content("Added friend.")
  end
end
