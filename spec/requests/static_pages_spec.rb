require 'spec_helper'

describe 'Static Page' do
  subject { page }
  describe 'Home page' do
    before { visit root_path}

    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should_not have_title('| Home') }
  end

  describe 'Help page' do
    it "should have content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    it "should have title with 'Help'" do
      visit help_path
      expect(page).to have_title('Help')
    end
  end

  describe 'About page' do
    it "should have content 'About page'" do
      visit about_path
      expect(page).to have_content('About')
    end
    it "should have title with 'About'" do
      visit about_path
      expect(page).to have_title('About')
    end
  end

  describe 'Contact page' do
    it "should have contact 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end
    it "should have title with 'Contact'" do
      visit contact_path
      expect(page).to have_title('Contact')
    end
  end
end
