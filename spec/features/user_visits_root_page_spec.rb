require 'spec_helper'

feature 'view homepage' do
  scenario 'user sees relevant information' do
    visit root_path
    expect(page).to have_css 'title', text: 'Yale Pediatric Cardiology Portal'
    expect(page).to have_css '[data-role="description"]'
  end
end
