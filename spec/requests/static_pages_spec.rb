require 'spec_helper'

describe 'Static Page' do
  describe 'Home page' do
    it "should hava content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end
end