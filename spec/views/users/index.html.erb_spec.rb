require "rails_helper"

describe "Route to view" do
 it 'has an index page' do
   visit '/users'

   expect(page.status_code).to eq(200)
 end
end