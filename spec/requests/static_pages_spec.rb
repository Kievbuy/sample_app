require 'rails_helper'

describe 'Static Pages' do
  
  describe 'Home page' do
    before(:each) do
      visit '/static_pages/home'
    end
    
    it "should have content 'Sample App'" do
      expect(page).to have_selector('h1', text: 'Sample App')
    end
    
    it "should have the right title" do
      expect(page).to have_title "Home | Ruby on Rails Tutorial Sample App"
    end
    
  end
  
  describe 'Help page' do
    before(:each) do
      visit '/static_pages/help'
    end
    
    it "should have conent 'Help'" do
      expect(page).to have_selector('h1', text: 'Help')
    end
    
    it "should have the right title" do
      expect(page).to have_title "Help | Ruby on Rails Tutorial Sample App"
    end
    
  end
  
  describe "About page" do
    before(:each) do
      visit '/static_pages/about'
    end
    
    it "should have content 'About'" do
      expect(page).to have_selector('h1', text: 'About')
    end
    
    it "should have the right title" do
      expect(page).to have_title "About us | Ruby on Rails Tutorial Sample App"
    end
    
  end
  
end
