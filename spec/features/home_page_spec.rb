require 'rails_helper'

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    # naviages to the root page of the website and ensures 'Projects'
    # in text exists on the loaded page
    visit root_path
    expect(page).to have_text("Projects")
  end
end
