class User < ApplicationRecord
  has_many :user_haikus
  has_many :user_words
  has_many :haikus, through: :user_haikus
  has_many :words, through: :user_words
end
