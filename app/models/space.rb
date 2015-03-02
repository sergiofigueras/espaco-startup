class Space < ActiveRecord::Base
  has_many :resources
  has_many :ratings
  has_many :requests

  geocoded_by :address
  after_validation :geocode
end
