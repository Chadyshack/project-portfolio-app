require 'rails_helper'

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    # naviages to the root page of the website and ensures 'Projects'
    # in text exists on the loaded page
    visit root_path
    expect(page).to have_text("Projects")
  end
  scenario "A visitor should see Create Account" do
    # naviages to the root page of the website and ensures 'Projects'
    # in text exists on the loaded page
    visit root_path
    expect(page).to have_text("Create Account")
  end
  scenario "A visitor should see Login" do
    # naviages to the root page of the website and ensures 'Projects'
    # in text exists on the loaded page
    visit root_path
    expect(page).to have_text("Login")
  end  
  scenario "A user should see Logout" do
    # naviages to the root page of the website and ensures 'Projects'
    # in text exists on the loaded page
    user = FactoryBot.create(:user)
    login_as(user)
    visit root_path
    expect(page).to have_text("Logout")
  end
  scenario "A user should see Edit Account" do
    # naviages to the root page of the website and ensures 'Projects'
    # in text exists on the loaded page
    user = FactoryBot.create(:user)
    login_as(user)
    visit root_path
    expect(page).to have_text("Edit Account")
  end
end
