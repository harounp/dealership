# == Schema Information
#
# Table name: cars
#
#  id           :integer          not null, primary key
#  style        :string
#  colour       :string
#  mileage      :integer
#  price        :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  car_model_id :integer
#

require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
