class Listing < ActiveRecord::Base
  has_one :area_listing
  has_one :area, :through => :area_listing
  
  has_one :user_listing
  has_one :user, :through => :user_listing
end
