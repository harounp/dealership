# == Schema Information
#
# Table name: cars
#
#  id           :integer          not null, primary key
#  make         :string
#  model        :string
#  style        :string
#  colour       :string
#  seats        :integer
#  range        :integer
#  fuel         :string
#  awd          :boolean
#  transmission :boolean
#  mileage      :integer
#  price        :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Car < ApplicationRecord
    def description
        [colour, make, model].join(' ') 
    end
end
