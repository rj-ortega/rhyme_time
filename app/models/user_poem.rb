class UserPoem < ApplicationRecord
  belongs_to :user
  belongs_to :poem
end
