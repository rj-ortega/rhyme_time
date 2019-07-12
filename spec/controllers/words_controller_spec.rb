# require 'rails_helper'

# describe WordsController do

#  describe 'POST create' do
#    context 'with valid attributes' do
#      it 'creates a new word' do
#        expect{
#          post :create, params: { :word => { :name => 'hypotenuse'} }
#        }.to change(Word,:count).by(1)
#      end

#      it 'redirects to the user show page with new word' do
#        post :create, params: { :word => { :name => 'hypotenuse'} }
#        expect(response).to redirect_to User.last
#      end
#    end
#  end

# end