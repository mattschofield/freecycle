class Listing < ActiveRecord::Base
  has_many :areas
  belongs_to :user
end
