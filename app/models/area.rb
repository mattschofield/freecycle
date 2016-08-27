class Area < ActiveRecord::Base
  has_many :listings, :through => :area_listing
end
