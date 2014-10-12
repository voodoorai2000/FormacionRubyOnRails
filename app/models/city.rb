class City < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name

  has_many :users
end
