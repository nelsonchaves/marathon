class FuelCalculator < ApplicationRecord
  has_one :user

  def convert_lb_to_kg
    kg = 2.2046
    (weight.to_i / kg).round(2)
  end

  def convert_miles_km
    km = 1.609344
    (distance.to_i * 1.609344).round(2)
  end
end
