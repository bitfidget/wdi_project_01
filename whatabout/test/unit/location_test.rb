# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  latitude   :float
#  longitude  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Location.new.valid?
  end
end
