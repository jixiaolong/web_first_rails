require 'spec_helper'

describe "Static pages" do
  subject{ page }

  describe "Home page" do
	before{visit root_path}
	it{should have_selector('h1', text: 'Sample App')}
	it{should have_selector('title',text: "Home")}
    =begin
	it "should have the h1 'Sample App'" do
      	visit root_path
      page.should have_selector('h1', text: 'Sample App')
    	end

    	it "should have the base title" do
      	visit root_path
      page.should have_selector('title',
                        text: "Home")
    	end
     =end
  end

  describe "Help page" do
	before{visit help_path}
	it{should have_selector('h1', text: 'Help')}
	it{should have_selector('title',text: "Help")}
    	=begin
      it "should have the h1 'Help'" do
      	visit help_path
     	page.should have_selector('h1', text: 'Help')
    	end

    	it "should have the title 'Help'" do
      	visit help_path
     	page.should have_selector('title',
                        text: "Help")
    	end
	=end
  end

  describe "About page" do
	before{visit about_path}
	it{should have_selector('h1', text: 'About Us')}
	it{should have_selector('title',text: "About Us")}
    =begin
	it "should have the h1 'About'" do
      #visit about_path
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the title 'About Us'" do
      #visit about_path
      page.should have_selector('title',
                    text: "About Us")
    end
    =end
  end

  describe "Contact page" do
	before{visit contact_path}
	it{should have_selector('h1', text: 'Contact')}
	it{should have_selector('title',text: "Contact")}
    	=begin
	it "should have the h1 'Contact'" do
      #visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      #visit contact_path
      page.should have_selector('title',
                    text: "Contact")
    end
  end
	=end
end

