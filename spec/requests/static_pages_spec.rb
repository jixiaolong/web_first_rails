require 'spec_helper'

describe "StaticPages" do
  	#describe "GET /static_pages" do
    	#	it "works! (now write some real specs)" do
      	#	# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      	#	get static_pages_index_path
      	#	response.status.should be(200)
    	#	end
  	#end
	describe "home page" do
		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App')
		end
		
		 it "should have the title 'Home'" do
      			visit '/static_pages/home'
     			page.should have_selector('title',
                        :text => "| Home")
    end
	end

	describe "help page" do
		it "should hava the content 'Help'" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end
	end
	describe "about us page" do
		it "should hava the content 'About Us'" do
			visit '/static_pages/about'
			page.should have_content('About Us')
		end
	end 
end
