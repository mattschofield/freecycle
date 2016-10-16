class User < ActiveRecord::Base
  has_many :listings

  has_secure_password

  validates :email, :first_name, :last_name, :password, :password_confirmation, :presence => true
end
