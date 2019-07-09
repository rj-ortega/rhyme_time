class Haiku < ApplicationRecord
    has_many :user_haikus
    has_many :users, through: :user_haikus
end
