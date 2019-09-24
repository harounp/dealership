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

class Car < ApplicationRecord
    belongs_to :CarModel , optional: true
    has_one_attached :car_photo
    def description
        [make.make, model.model].join(' ') 
    end
    
    def model 
        CarModel.find(car_model_id)
    end

    def make
        CarMake.find(model.car_make_id)
    end
end
