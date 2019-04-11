require 'Date'
#Input: year integer
#Output: number of Friday the 13ths in the year given
#Rules: assume the year is greater than 1752

def friday_13th(year)
  fridays = []
  start_date = Date.new(01-01-year)
  end_date = Date.new(04-01-(year + 1))
  (start_date...end_date).group_by(&:wday).each do |day|
    fridays << if day.friday?
  end
end
  fridays
end

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

#Or

def friday_13th(year)
  count = 0
  friday = Date.new(year, 01, 13)
  12.times do |mo|
  count += 1 if friday.friday?
  friday = friday.next_month
  end
  p count
end