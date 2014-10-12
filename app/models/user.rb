class User < ActiveRecord::Base
  belongs_to :city
  #validates :email, presence: true
end
