class Word < ApplicationRecord
    has_many :user_words
    has_many :users, through: :user_words

  def get_api
    @api = API.query
  end
end
