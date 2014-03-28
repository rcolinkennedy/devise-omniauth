# in spec/features/app_content_spec.rb

describe "The basic Home page", :type => :feature do

  it "goes to the Home page" do
    visit root_url
    expect(page).to have_content 'Home'

  end

  # before :each do
  #   User.make(:email => 'user@example.com', :password => 'caplin')
  # end

  # it "signs me in" do
  #   visit '/sessions/new'
  #   within("#session") do
  #     fill_in 'Login', :with => 'user@example.com'
  #     fill_in 'Password', :with => 'password'
  #   end
  #   click_link 'Sign in'
  #   expect(page).to have_content 'Success'
  # end
end