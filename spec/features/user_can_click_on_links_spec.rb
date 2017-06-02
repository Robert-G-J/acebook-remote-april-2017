require 'rails_helper'

 RSpec.feature "Timeline", type: :feature do
   scenario "Can click on posts' links" do
     sign_up
     visit "/posts"
     click_button "New Post"
     fill_in "Message", with: "Hello, my site is: https://www.youtube.com/"
     click_button "Post"
     expect(page).to have_link('https://www.youtube.com/', href: 'https://www.youtube.com/')
   end
 end
