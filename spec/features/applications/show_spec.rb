require 'rails_helper'

RSpec.describe 'the applications show' do
  before do
    @shelter = Shelter.create!(foster_program: true, name: "Ferret Shelter", city: "Denver", rank: 1)
    @application = Application.create!(name: "Pabu", street_address: "123 Ferret St", city: "Erie", state: "Co", zipcode: "80516")
    @pet = Pet.create!(name: "Loki", age: 1, breed: "brown", adoptable: true, shelter_id: @shelter.id)
  end
  it "shows the application and all it's attributes" do

    visit "/applications/#{@application.id}"

    expect(page).to have_content(@application.name)
    expect(page).to have_content(@application.street_address)
    expect(page).to have_content(@application.city)
    expect(page).to have_content(@application.state)
    expect(page).to have_content(@application.zipcode)
    #expect(page).to have_content(application.description)
  end
  it "Add a pet" do

    visit "/applications/#{@application.id}"

    fill_in 'Pet name', with: 'Loki'
    click_button 'Search'

    click_button 'Adopt this Pet'

    expect(page).to have_current_path("/applications/#{@application.id}")

  end
end
