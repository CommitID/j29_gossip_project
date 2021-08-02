class Tag < ApplicationRecord
  has_many :tag_gossips, dependent: :destroy
end
