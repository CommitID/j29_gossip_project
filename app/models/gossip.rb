class Gossip < ApplicationRecord
  has_many :tag_gossips, dependent: :destroy
  belongs_to :user
  validates :title, 
    presence: true, 
    length: { minimum: 4},
    length: { maximum: 14}
  validates :content, presence: true  
end
