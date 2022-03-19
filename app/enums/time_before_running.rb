class TimeBeforeRunning < ClassyEnum::Base
end

class TimeBeforeRunning::OneHour < TimeBeforeRunning
  def text
    "0-60min"
  end

  def time_before_running_multiplier
    0.375
  end
end
class TimeBeforeRunning::TwoHour < TimeBeforeRunning
  def text
    "1-2hrs"
  end

  def time_before_running_multiplier
    0.75
  end
end
class TimeBeforeRunning::ThreeHour < TimeBeforeRunning
  def text
    "2-3hrs"
  end

  def time_before_running_multiplier
    1.25
  end
end
class TimeBeforeRunning::FourHour < TimeBeforeRunning
  def text
    "3-4hrs"
  end

  def time_before_running_multiplier
    1.75
  end
end
