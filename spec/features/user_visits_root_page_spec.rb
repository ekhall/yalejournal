require 'spec_helper'

feature 'User accesses homepage' do
  scenario 'and sees relevant information' do
    visit root_path
    expect(page).to have_css 'h1', text: 'Yale Pediatric Cardiology Portal'
    #expect(page).to have_css '[data-role="description"]'
  end

  scenario 'and attempts to log in with valid credentials' do
    sign_in_user
    expect(page).to have_content('Sign Out')
  end
end
