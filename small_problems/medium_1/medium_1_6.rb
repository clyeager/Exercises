#Create a mini stack-and-register programming language
#Rules: initialize register to 0
#All programs supplied as arguments will be valid values
#All operations are integer values
=begin
Use the following:
n Place a value n in the "register". Do not modify the stack.
PUSH Push the register value on to the stack. Leave the value in the register.
ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
POP Remove the topmost item from the stack and place in register
PRINT Print the register value
=end

def minilang(command_string)
  stack = []
  register = 0
  
  command_string.split.each do |command|
    case
    when command == 'PUSH'
      stack << register
    when command == 'ADD'
     register = (register + stack.pop)
    when command == 'SUB'
      register = (register - stack.pop)
    when command == 'MULT'
      register = (register * stack.pop)
    when command == 'DIV'
      register = (register / stack.pop)
    when command == 'MOD'
      register = (register % stack.pop)
    when command == 'POP'
      register = stack.pop
    when command == 'PRINT'
      puts register
    else
      register = command.to_i
    end
  end
end

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')