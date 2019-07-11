describe Poem do
  before(:each) do
    @poem = Poem.create!( {title: "Daenerys", poem: "fireandblood"} )
  end

  it "can be created" do
    expect(@poem).to be_valid
  end
end