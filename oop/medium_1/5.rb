class EmptyStackError < StandardError; end
class CommandError < StandardError; end

class Minilang

  STACK_COMMANDS = ['ADD', 'SUB', 'MULT', 'DIV', 'MOD', 'POP']

  def initialize(commands)
    @register = 0
    @stack = []
    @commands = commands
  end

  def eval
    begin
      @commands.split.each { |command| process_command(command) }
    rescue EmptyStackError, CommandError => e
      puts e.message
    end
  end

  def process_command(command)
    if command.to_i.to_s == command
      @register = command.to_i
    elsif STACK_COMMANDS.include?(command) && @stack.empty?
      raise EmptyStackError.new 'Empty stack!'
    elsif !STACK_COMMANDS.include?(command) &&
      !['PUSH', 'PRINT'].include?(command)
      raise CommandError.new "Invalid command #{command}!"
    else
      send command.downcase.to_sym
    end
  end

  def push
    @stack << @register
  end

  def add
    @register += @stack.pop
  end

  def sub
    @register -= @stack.pop
  end

  def mult
    @register *= @stack.pop
  end

  def div
    @register /= @stack.pop
  end

  def mod
    @register = (@register.divmod(@stack.pop)).last
  end

  def pop
    @register = @stack.pop
  end

  def print
    puts @register
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)

