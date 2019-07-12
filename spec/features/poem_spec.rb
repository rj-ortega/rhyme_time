# require 'rails_helper'

# describe 'navigate poem edit' do
#   before do
#     Poem.create( {title: "clarece", poem: "yo yo, i love you boo"} )
#   end

#   it 'shows the poem on the page' do
#     visit poems_path
#     expect(page).to have_content("yo yo, i love you boo")
#   end
# end

#   it 'displays a link to the edit page' do 
#     visit poem_path(@poem.id)

#     expect(page).to have_link(@genre.name, href: genre_path(@genre))
#   end

#   it 'displays a link to the artist page' do 
#     visit song_path(@song.id)

#     expect(page).to have_link(@artist.name, href: artist_path(@artist))
#   end

#   it 'to song pages' do
#     visit song_path(@song.id)
#     expect(page.status_code).to eq(200)
#   end

# describe 'poem form' do
#   before do
#     @user = Poem.create(poem: "My poem")
#   end

#   it 'shows a new form that submits content and redirects and prints out params' do
#     visit new_song_path

#     fill_in 'poem[poem]', with: "My poem"

#     click_on "Create Poem"

#     expect(page).to have_content("My poem")
#   end
# end

#   it 'shows a new form that submits content and redirects and prints out params' do
#     @song = Song.create(name: "My Song", artist_id: @artist.id, genre_id: @genre.id)

#     visit edit_song_path(@song)

#     fill_in 'song[name]', with: "My edit"
#     fill_in 'song[artist_id]', with: @artist.id
#     fill_in 'song[genre_id]', with: @genre.id

#     click_on "Update Song"

#     expect(page).to have_content("My edit")
#   end
# end

# describe 'index' do
#   before do
#     @artist = Artist.create(name: "My Artist", bio: "My artist bio")
#     @genre = Genre.create(name: "My Genre")
#     @song = Song.create(name: "My Song", artist_id: @artist.id, genre_id: @genre.id)
#   end

#   it 'displays the song name' do
#     visit songs_path
#     expect(page).to have_css("p", text: "My Song")
#   end