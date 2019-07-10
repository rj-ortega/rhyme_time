class User < ApplicationRecord
  has_many :user_poems
  has_many :user_words
  has_many :poems, through: :user_poems
  has_many :words, through: :user_words
  has_secure_password
end
