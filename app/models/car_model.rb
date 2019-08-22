# == Schema Information
#
# Table name: car_models
#
#  id          :integer          not null, primary key
#  model       :string
#  car_make_id :integer
#  range       :integer
#  seats       :integer
#  fuel        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CarModel < ApplicationRecord
  belongs_to :CarMake
  has_many :Car
end
