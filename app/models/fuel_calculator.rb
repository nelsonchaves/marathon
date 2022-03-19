class FuelCalculator < ApplicationRecord
  include ClassyEnum::ActiveRecord

  has_one :user

  classy_enum_attr :temperature, class_name: 'TemperatureRange'
  classy_enum_attr :estimate_start, class_name: 'TimeBeforeRunning'

  def convert_lb_to_kg
    kg = 2.2046
    (weight.to_f / kg).round(2)
  end

  def convert_miles_km
    (distance.to_f * 1.609344).round(2)
  end

  def elevation_gain_km
    (elevation.to_f / 3280.84).round(2)
  end

  def average_pace_mile
    ((convert_miles_km / estimate_time.to_f) * 60).round(2)
  end

  def carbohydrates
    (estimate_start.time_before_running_multiplier * convert_lb_to_kg).round(2)
  end

  def caloric_burn_rate
    (((elevation_gain_km * average_pace_mile)+ convert_miles_km) * convert_lb_to_kg).round(2)
  end

  def formula_reference
    estimate_time.to_f * 24
  end

  def running_power
    (((elevation_gain_km * 10 ) + convert_miles_km) * 1000) / (formula_reference * 3600) * 1.04 * convert_lb_to_kg
  end
end
