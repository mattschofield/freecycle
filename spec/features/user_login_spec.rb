require 'rails_helper'

describe "User registration" do

  email = "matt@freecyclable.com"
  first_name = "Matt"
  last_name = "Schofield"
  password = "super-secure"
  password_confirmation = "super-secure"

  context "when a User hasn't filled in all fields" do
    it 'stops a User from signing up' do
      visit register_path
      fill_in "Email", :with => ""
      fill_in "First name", :with => ""
      fill_in "Last name", :with => ""
      fill_in "Password", :with => ""
      fill_in "Password confirmation", :with => ""

      click_button "Create User"
      expect(page).to have_content "error"
    end
  end

  context "when a User has filled in all fields" do
    it 'allows a User to sign up' do
      visit register_path

      fill_in "Email", :with => email
      fill_in "First name", :with => first_name
      fill_in "Last name", :with => last_name
      fill_in "Password", :with => password
      fill_in "Password confirmation", :with => password_confirmation

      click_button "Create User"
      expect(page).not_to have_content "error"
    end
  end
end
