# == Schema Information
#
# Table name: cars
#
#  id           :integer          not null, primary key
#  style        :string
#  colour       :string
#  awd          :boolean
#  transmission :boolean
#  mileage      :integer
#  price        :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  car_model_id :integer
#

class Car < ApplicationRecord
    belongs_to :CarModel 
    has_one_attached :car_photo
    # def description
    #     [colour, make, model].join(' ') 
    # end
end
