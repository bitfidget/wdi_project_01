# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :text
#  image      :text
#  address    :text
#  latitude   :float
#  longitude  :float
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :image, :address, :latitude, :longitude
  has_many :posts
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
