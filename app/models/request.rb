class Request < ActiveRecord::Base
  has_one :space
  has_one :user
end
