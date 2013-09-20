require 'spec_helper'

describe "Static Pages" do

  describe "Home pages" do
    it "should have the content 'sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :test => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',
                                :test => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',
                                :test => "Ruby on Rails Tutorial Sample App | About")
    end
  end

end
