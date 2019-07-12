require "rails_helper"

describe "Navigation" do

 it 'has an index page' do
   visit '/users'

   expect(page.status_code).to eq(200)
 end

  it 'has an poem index page' do
    visit '/poems'
 
    expect(page.status_code).to eq(200)
  end

  it 'has an sign up page' do
    visit '/signup'
 
    expect(page.status_code).to eq(200)
  end

  it 'has an login page' do
    visit '/login'
 
    expect(page.status_code).to eq(200)
  end

  it 'shakespeare api works' do 
    visit users_path
  
    expect(page).to have_content("Sonnet")
  end
end



  # it 'displays a link to the artist page' do 
  #   visit song_path(@song.id)

  #   expect(page).to have_link(@artist.name, href: artist_path(@artist))
  # end

  # it 'to song pages' do
  #   visit song_path(@song.id)
  #   expect(page.status_code).to eq(200)
  # end