require "rails_helper"

# [] A show must have a date and location. It can optionally have a setlist and notes.
# [] Visiting the `/shows/new` path should display a form for creating a new show.
# [] When adding a new show, if I fill out the form correctly, I should see the page for the newly created show.
# [] When adding a new show, if I fill out the form incorrectly and submit the form, I should see the form and be displayed the validation errors.


feature "visitors can add shows" do
  scenario "visitor adds new show successfully" do

    visit new_show_path
    expect(page).to have_content "New Show Form"

    fill_in 'Date', with: "19991231"
    fill_in 'Location', with: "Madison Square Garden"
    fill_in 'Setlist', with: "01 one big ol jam"
    fill_in 'Notes', with: "nA"

    click_button "Add Show"

    expect(page).to have_content "Show added successfully"
    expect(page).to have_content "1999-12-31"
    expect(page).to have_content "01 one big ol jam"
  end

  scenario "visitor does not provide proper information for a show" do
    visit new_show_path

    click_button "Add Show"
    expect(page).to have_content "Show date can't be blank"
    expect(page).to have_content "Location can't be blank"
  end
end
