class InvalidInput < StandardError
  def message
    puts "You tried to enter an invalid command!"
  end
end

class StackError < StandardError
  def message
    puts "The stack is empty!"
  end
end

class Minilang
  attr_reader :commands, :stack
  attr_accessor :register

  def initialize(commands)
    @commands = commands
    @stack = []
    @register = 0
  end

  def eval
    begin
      commands.split.each do |command|
        case command
        when 'PUSH' then call_push
        when 'ADD' then add
        when 'SUB' then call_sub
        when 'MULT' then mult
        when 'DIV' then div
        when 'MOD' then mod
        when 'POP' then call_pop
        when 'PRINT' then call_print
        else
          self.register = command.to_i
        end
      end
    rescue InvalidInput => e
      puts e.message
    end
  end

  def call_push
    begin
      stack << register
    rescue StackError => e
      puts e.message
    end
  end

  def add
    begin
      self.register = register + stack.pop
    rescue StackError => e
      puts e.message
    end
  end

  def call_sub
    begin
      self.register = register - stack.pop
    rescue StackError => e
      puts e.message
    end
  end

  def mult
    begin
      self.register = register * stack.pop
    rescue StackError => e
      puts e.message
    end
  end

  def div
    begin
      self.register = register / stack.pop
    rescue StackError => e
      puts e.message
    end
  end

  def mod
    begin
      self.register = register % stack.pop
    rescue StackError => e
      puts e.message
    end
  end

  def call_pop
    begin
      self.register = stack.pop
    rescue StackError => e
      puts e.message
    end
  end

  def call_print
    begin
      puts register
    rescue StackError => e
      puts e.message
    end
  end
end

Minilang.new('PRINT').eval
Minilang.new('5 PUSH 3 MULT PRINT').eval
Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
Minilang.new('5 PUSH POP POP PRINT').eval
Minilang.new('-3 PUSH 5 XSUB PRINT').eval

require 'set'

class MinilangError < StandardError; end
class BadTokenError < MinilangError; end
class EmptyStackError < MinilangError; end

class Minilang
  ACTIONS = Set.new %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

  def initialize(program)
    @program = program
  end

  def eval
    @stack = []
    @register = 0
    @program.split.each { |token| eval_token(token) }
  rescue MinilangError => error
    puts error.message
  end

  private

  def eval_token(token)
    if ACTIONS.include?(token)
      send(token.downcase)
    elsif token =~ /\A[-+]?\d+\z/
      @register = token.to_i
    else
      raise BadTokenError, "Invalid token: #{token}"
    end
  end

  def push
    @stack.push(@register)
  end

  def pop
    raise EmptyStackError, "Empty stack!" if @stack.empty?
    @register = @stack.pop
  end

  def add
    @register += pop
  end

  def div
    @register /= pop
  end

  def mod
    @register %= pop
  end

  def mult
    @register *= pop
  end

  def sub
    @register -= pop
  end

  def print
    puts @register
  end
end