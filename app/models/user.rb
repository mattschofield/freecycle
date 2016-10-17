class User < ActiveRecord::Base
  has_many :user_listings
  has_many :listings, :through => :user_listings

  has_secure_password

  validates :email, :presence => true, :uniqueness => true
  validates :first_name, :last_name, :password, :password_confirmation, :presence => true
end
