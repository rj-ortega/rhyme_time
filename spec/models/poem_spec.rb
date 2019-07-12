describe "can be created" do
  before(:each) do
    @poem = Poem.create!( {title: "Daenerys", poem: "fireandblood"} )
    @user = User.create!(name: "Daenerys", username: "Targaryen", password: "fireandblood")
    @word = Poem.create!(poem: "Daenerys", title: "fire and blood")
  end

  it "Poem" do
    expect(@poem).to be_valid
  end

  it "User" do
    expect(@user).to be_valid
  end

  it "Word" do
    expect(@word).to be_valid
  end
end
