# == Schema Information
#
# Table name: car_models
#
#  id          :integer          not null, primary key
#  model       :string
#  car_make_id :integer
#  fuel        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CarModelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
