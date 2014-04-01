require 'spec_helper'

describe "Static pages" do
describe "Home page" do
	it "should be 'Sample App'" do
		visit '/static_pages/home'
		expect(page).to have_content('Sample App')
    end
  end

describe "Help page" do
	it "should be 'Help'" do
		visit '/static_pages/help'
		expect(page).to have_content('Help')
	end
end

describe "About page" do
	it "should be 'About'" do
		visit '/static_pages/about'
		expect(page).to have_content('About')
	end
end


end
