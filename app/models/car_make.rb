# == Schema Information
#
# Table name: car_makes
#
#  id         :integer          not null, primary key
#  make       :string
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CarMake < ApplicationRecord
    has_many :CarModel
end
