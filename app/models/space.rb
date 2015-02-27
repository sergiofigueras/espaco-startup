class Space < ActiveRecord::Base
  has_many :resources
  has_many :ratings
  has_many :requests
end
