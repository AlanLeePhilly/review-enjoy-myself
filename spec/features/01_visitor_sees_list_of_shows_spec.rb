require 'rails_helper'

# [] Visiting the `/shows` path should contain a list of shows.
# [] Visiting the `/shows/10` path should show the show details for a show with the ID of 10.
# [] Visiting the root path should display a list of all shows.

feature "visitor sees a list of shows" do
  scenario "sees a list of shows and link for new show" do
    show1 = Show.create(show_date: 19990102, location: 'Madison Square Garde', setlist: 'One big jam', notes: 'nA')
    show2 = Show.create(show_date: 20011231, location: "Hampton Coliseum", setlist: "One bigger jam", notes: "nA")

    visit shows_path

    expect(page).to have_content "2001-12-31"
    expect(page).to have_link "1999-01-02"

    click_link "Add New Show"

    expect(page).to have_content "New Show Form"
  end
  scenario "clicks link and is taken to show page for given show" do
    show1 = Show.create(show_date: 19990102, location: 'Madison Square Garde', setlist: 'One big jam', notes: 'nA')

    visit root_path

    click_link "1999-01-02"

    expect(page).to have_content "1999-01-02"
    expect(page).to have_content show1.location
    expect(page).to have_content show1.setlist
    expect(page).to have_content show1.notes
  end
end
