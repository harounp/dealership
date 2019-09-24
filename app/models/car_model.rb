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

class CarModel < ApplicationRecord
  belongs_to :CarMake, optional: true
  has_many :Car

  def self.avail_models(params)
    return CarModel.where(car_make_id: params[:car_make_id])
  end

end
