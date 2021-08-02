class Gossip < ApplicationRecord
  has_many :tag_gossips, dependent: :destroy
  belongs_to :user
end
