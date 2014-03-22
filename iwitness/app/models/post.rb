# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  body        :text
#  image       :text
#  rating_up   :integer
#  rating_down :integer
#  user_id     :integer
#  address     :text
#  latitude    :float
#  longitude   :float
#  created_at  :datetime
#  updated_at  :datetime
#

class Post < ActiveRecord::Base
  attr_accessible :title, :body, :image, :rating_up, :rating_down, :user_id, :address, :latitude, :longitude
  belongs_to :user
  has_and_belongs_to_many :categories
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
