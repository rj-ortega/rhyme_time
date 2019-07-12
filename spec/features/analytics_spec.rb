require "rails_helper"

describe "Analytics" do
    before(:each) do
        @poem = Poem.create!( {title: "Daenerys", poem: "fireandblood"} )
    end

 it 'number of users' do
   visit signup_path

   expect(page).to have_content("You are the")
 end

  it 'shows last poem created' do
    visit login_path
 
   expect(page).to have_content("Daenerys")
  end

  it 'shows number of poems created' do 
    visit users_path
  
    expect(page).to have_content("poems have been created")
  end
end