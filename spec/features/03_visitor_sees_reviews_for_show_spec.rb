require 'rails_helper'

# [] A show can have many reviews. Each review must contain the following:
#   [] A rating
#   [] A body
#   [] A timestamp for when it was created
# [] Visiting the `/shows/1` path should also include all reviews for a show with ID = 1.

feature "visitor sees list of reviews on show page" do
  scenario "sees reviews for specific show" do
  end

  scenario "does not see other reviews for other shows" do
  end
end
