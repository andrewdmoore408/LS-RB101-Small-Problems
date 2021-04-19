HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60

def calc_hours_and_minutes_from_midnight(minutes_away)
  
  hours, minutes = minutes_away.abs.divmod(MINUTES_PER_HOUR)
  
  hours = hours % HOURS_PER_DAY if hours > HOURS_PER_DAY - 1 
    
  [hours, minutes]
end

def time_of_day(minutes_away)
  hours, minutes = calc_hours_and_minutes_from_midnight(minutes_away)
  
  if minutes_away.negative?
    hours = (HOURS_PER_DAY - 1) - hours
    minutes = MINUTES_PER_HOUR - minutes
  end
  
  hours_str = hours.to_s
  hours_str.prepend("0") if hours_str.size == 1
  
  minutes_str = minutes.to_s
  minutes_str.prepend("0") if minutes_str.size == 1

  "#{hours_str}:#{minutes_str}"
end

  p time_of_day(0) == "00:00"
  p time_of_day(-3) == "23:57"
  p time_of_day(35) == "00:35"
  p time_of_day(-1437) == "00:03"
  p time_of_day(3000) == "02:00"
  p time_of_day(800) == "13:20"
  p time_of_day(-4231) == "01:29"