class Listing < ActiveRecord::Base
  has_one :area, :through => :area_listing
  belongs_to :user
end
