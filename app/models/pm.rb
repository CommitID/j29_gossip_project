class Pm < ApplicationRecord
  has_many :user_pms, dependent: :destroy
    belongs_to :user
end
