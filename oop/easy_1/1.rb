#complete the class to work properly

class Banner
  attr_reader :message, :size

  def initialize(message)
    @message = message
    @size = message.size
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    '+' + ('-' * (size + 2)) + '+'
  end

  def empty_line
    "|" + (' ' * (size + 2)) + '|'
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('')
puts banner

#Further exploration-take an optional banner size

class Banner
  attr_reader :message
  attr_accessor :size

  def initialize(message, size = (message.size + 4))
    @message = message
    @size = size
    check_size ? @size = size : @size = (message.size + 4)
  end

  def check_size
    size > (message.size + 2) && size < 80
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    '+' + ('-' * (size - 2)) + '+'
  end

  def empty_line
    "|" + (' ' * (size - 2)) + '|'
  end

  def message_spaces
    spaces = size - (message.size + 2)
    if spaces.even?
      [spaces / 2, spaces / 2]
    else
      [spaces / 2, spaces / 2 + 1]
    end
  end

  def message_line
    "|" + ' ' * message_spaces[0] + message + (' ') * message_spaces[1] + '|'
  end
end

banner = Banner.new('To boldly go where no one has gone before.', 10)
puts banner

banner = Banner.new('', 79)
puts banner

banner = Banner.new('')
puts banner