class Rating < ActiveRecord::Base
  has_one :space
  has_and_belongs_to_many :users
end
