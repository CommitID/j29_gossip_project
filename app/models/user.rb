class User < ApplicationRecord
  has_secure_password
  belongs_to :city
  has_many :gossips
  has_many :pms
  has_many :comments, dependent: :destroy
  has_many :user_pms, dependent: :destroy

  validates :password, presence: true, length: {minimum: 6}
  validates :password_confirmation, presence: true, length: {minimum: 6}
  
end
