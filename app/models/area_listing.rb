class AreaListing < ActiveRecord::Base
  belongs_to :area
  belongs_to :listing
end