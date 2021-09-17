require 'rails_helper'

describe 'search results' do
# As a user
  # When I visit "/"
  # And I select "Griffin Coffee" form the start location drop down (Note: Use the existing search form)
  # And I click "Find Nearest Station"
  # Then I should be on page "/search"
  # Then I should see the closest electric fuel station to me.
# For that station I should see
  # - Name
  # - Address
  # - Fuel Type
  # - Access Times
# I should also see:
  # - the distance of the nearest station (should be 0.1 miles)
  # - the travel time from Griffin Coffee to that fuel station (should be 1 min)
  # - The direction instructions to get to that fuel station
  # "Turn left onto Lawrence St Destination will be on the left"
  it 'can search for the nearest station' do
    visit root_path

    select 'Griffin Coffee', from: :location
    click_on 'Find Nearest Station'

    expect(page).to have_content 'Results:'
    # save_and_open_page
    expect(page).to have_css('#name')
    expect(page).to have_css('#address')
    expect(page).to have_css('#fuel_type')
    expect(page).to have_css('#access_times')

    expect(page).to have_css('#distance')
    expect(page).to have_css('#travel_time')
    expect(page).to have_css('#directions')
  end
end
