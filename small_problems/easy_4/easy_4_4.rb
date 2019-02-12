=begin
The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752,
 the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly
 divisible by 4.

Using this information, update the method from the previous exercise to determine leap years both 
before and after 1752.
=end

def leap_year?(year)
  if year > 1752
    return true if year % 4 == 0 unless year % 100 == 0
    return false unless year % 400 == 0
    return true
  else
    return true if year % 4 == 0
    return false
  end
end

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false