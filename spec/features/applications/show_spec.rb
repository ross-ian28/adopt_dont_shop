require 'rails_helper'

RSpec.describe 'the applications show' do
  it "shows the application and all it's attributes" do
    application = Application.new

    visit "/applications/#{application.id}"

    expect(page).to have_content(application.name)
    expect(page).to have_content(application.street_address)
    expect(page).to have_content(application.city)
    expect(page).to have_content(application.state)
    expect(page).to have_content(application.zipcode)
    #expect(page).to have_content(application.description)
  end
end
