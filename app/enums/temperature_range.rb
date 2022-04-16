class TemperatureRange < ClassyEnum::Base
end
class TemperatureRange::Fahrenheit40 < TemperatureRange
  def text
    "<50°F"
  end

  def temperature_multiplier
    0.75
  end

  def fluid
    17 * temperature_multiplier
  end
end

class TemperatureRange::Fahrenheit50 < TemperatureRange
  def text
    "50-59°F"
  end

  def temperature_multiplier
    0.85
  end
  def fluid
    17 * temperature_multiplier
  end
end

class TemperatureRange::Fahrenheit60 < TemperatureRange
  def text
    "60-69°F"
  end

  def temperature_multiplier
    1
  end

  def fluid
    17 * temperature_multiplier
  end
end
class TemperatureRange::Fahrenheit70 < TemperatureRange
  def text
    "70-79°F"
  end

  def temperature_multiplier
    1.35
  end

  def fluid
    17 * temperature_multiplier
  end
end
class TemperatureRange::Fahrenheit80 < TemperatureRange
  def text
    "80-89°F"
  end

  def temperature_multiplier
    1.7
  end

  def fluid
    17 * temperature_multiplier
  end
end
class TemperatureRange::Fahrenheit90 < TemperatureRange
  def text
    "90-99°F"
  end

  def temperature_multiplier
    2
  end

  def fluid
    17 * temperature_multiplier
  end
end
class TemperatureRange::Fahrenheit100 < TemperatureRange
  def text
    "100-109°F"
  end

  def temperature_multiplier
    2.35
  end

  def fluid
    17 * temperature_multiplier
  end
end
