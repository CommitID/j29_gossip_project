class UserPm < ApplicationRecord
  belongs_to :user
  belongs_to :pm
end
