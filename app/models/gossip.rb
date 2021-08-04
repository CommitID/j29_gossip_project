class Gossip < ApplicationRecord
  has_many :tag_gossips, dependent: :destroy
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, 
    presence: true, 
    length: { minimum: 4, message: "C'est bien trop court"},
    length: { maximum: 14, message: "C'est bien trop long"}
  validates :content, presence: true 
end
