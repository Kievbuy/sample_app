require 'rails_helper'

describe 'Static Pages' do
  
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe 'Home page' do
    before(:each) do
      visit '/static_pages/home'
    end
    
    it "should have content 'Sample App'" do
      expect(page).to have_selector('h1', text: 'Sample App')
    end
    
    it "should have the right title" do
      expect(page).to have_title "#{base_title}"
    end
    
    it "should not have a custom page title" do
      expect(page).to_not have_title "Home | "
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
      expect(page).to have_title "Help | #{base_title}"
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
      expect(page).to have_title "About us | #{base_title}"
    end
    
  end
  
  describe "Contact page" do
    before(:each) do
      visit '/static_pages/contact'
    end
    
    it "should have content 'Contact'" do
      expect(page).to have_selector('h1', text: 'Contact')
    end
    
    it "should have the right title" do
      expect(page).to have_title "Contact | #{base_title}"
    end
  end
  
end
