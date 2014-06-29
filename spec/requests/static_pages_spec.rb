require 'spec_helper'

describe 'Static Page' do
  describe 'Home page' do
    it "should have content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have title with 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe 'Help page' do
    it "should have content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have title with 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Help')
    end
  end

  describe 'About page' do
    it "should have content 'About page'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
    it "should have title with 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title('About')
    end
  end

  describe 'Contact page' do
    it "should have contact 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
    it "should have title with 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title('Contact')
    end
  end
end