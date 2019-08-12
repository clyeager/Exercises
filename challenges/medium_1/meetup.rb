require 'date'

class Meetup
  CWDAYS = {
    :monday => 1, :tuesday => 2, :wednesday => 3,
    :thursday => 4, :friday => 5, :saturday => 6,
    :sunday => 7
  }

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    choices = []
    1.upto(31) do |number_date|
      break unless Date.valid_date?(@year, @month, number_date)
      date = Date.new(@year, @month, number_date)
      choices << [date, number_date] if date.cwday == CWDAYS[weekday]
    end

    case schedule
    when :first then choices[0][0]
    when :second then choices[1][0]
    when :third then choices[2][0]
    when :fourth then choices[3][0]
    when :last then choices[-1][0]
    when :teenth then choices.each { |choice| return choice[0] if (13..19).include?(choice[1]) }
    end
  end
end