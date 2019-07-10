require "rails_helper"

describe User do
  before(:each) do
    @user = User.create!(name: "Daenerys", username: "Targaryen", password: "fireandblood")
  end

  it "can be created" do
    expect(@user).to be_valid
  end
end
