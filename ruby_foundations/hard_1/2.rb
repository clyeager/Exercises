# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')

#In line 2, we can see that we can call Kernel#proc to create a new proc object.
#In our call to <puts my_proc> we output our proc object by internally calling
#to_s. We see that the class of our proc object is Proc, as shown by outputting
#proc.class.
#Our final two lines of code each call our proc object, and show that arity
#rules are lenient and nil is assigned to any extra block parameters that are
# not passed in as arguments.

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
my_lambda.call
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

#Here in our first few lines of code, we are showing that there are two ways
# to create a lambda. The first is through a call to Kernel#lambda, and the second
# is using the literal lambda syntax. When we puts it to the screen we call to_s
#on the object, which outputs our lambda object. We can tell by the output that a
#lambda is a type of proc object.
#Lines 22 and 23 show that lambda arity rules are strict, and are similar to those
# of methods, and not normal procs. If we try to call in too many or two few 
#arguments, we will get an ArgumentError.
#Our last line of code results in a NameError, uninitialized constant Lambda.
#The reason is that there is no Lambda::new method, as lambda is not a class,
# and can not use Proc::new to be instantiated, despite being a type of proc.

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
block_method_1('seal')

#The takeaway from the first method call is that our seal block parameter is set to 
#nil and interpolates to output an empty space.
#The second example shows that we will get a LocaljumpError if we define our method
# to yield to a block and do not pass it a block.

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

#These examples show that blocks have lenient arity rules. When passing in an animal
# string via local variable animal, the block works as expected. If we set up our
# block to take two arguments and only pass one argument, nil is filled as the
# value of our other argument, and interpolation causes an empty space in our output.
# In the third method call we see that we did not include a variable block parameter,
# and therefore we get a NameError, undefined local variable or method.

#Final analysis

#My overall takeaway from this exercise is that while similar in function, blocks,
# procs, and lambdas each have their own pros and cons based on the need of a
# program. When we need loose arity rules, block and procs will work, and when we
# want less flexibility, we want lambdas. Another important thing to note, is that
#regardless of the type of block a method uses, method rules still apply within
# the method itself, and therefore if we yield to a block, we must pass a block.
