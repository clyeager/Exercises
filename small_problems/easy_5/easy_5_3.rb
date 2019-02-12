#Input: time of day in 24 hour format
#Output: return number of minutes before and after midnight respectively(in range of 0..1439)
#Rules: Two methods, one for before midnight, one for after
#No Time and Date classes


def after_midnight(time)
  hour = time[0, 2].to_i
  minutes = time [-2, 2].to_i
  return 0 if hour == 24 || hour == 0
  hour * 60 + minutes
end

def before_midnight(time)
  hour = time[0,2].to_i
  minutes = time[-2, 2].to_i
  total_minutes = hour * 60 + minutes
  return 0 if hour == 24 || hour == 0
  1440 - total_minutes
end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0