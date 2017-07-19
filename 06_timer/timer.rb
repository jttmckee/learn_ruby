class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    timeTaken = @seconds
    hours = (timeTaken / 3600).to_s.rjust(2, '0')
    timeTaken = timeTaken - (timeTaken / 3600) * 3600
    minutes = (timeTaken / 60).to_s.rjust(2, '0')
    timeTaken = timeTaken - (timeTaken / 60) * 60
    seconds = timeTaken.to_s.rjust(2, '0')

    return "#{hours}:#{minutes}:#{seconds}"

  end


end
