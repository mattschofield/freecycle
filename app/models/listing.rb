class Listing < ActiveRecord::Base
  has_many :areas, :through => :area_listing
  belongs_to :user
end
