class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    "#{hours}:#{minutes}:#{seconds_remaining}"
  end

  private

  def hours
    '%02d' % (@seconds / 3600)
  end

  def remaining_minute_seconds
    @seconds % 3600
  end

  def minutes
    '%02d' % (remaining_minute_seconds / 60)
  end

  def seconds_remaining
    '%02d' % (remaining_minute_seconds % 60)
  end
end
