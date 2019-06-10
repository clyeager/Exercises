#complete the program

class Book
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

#Further exploration

=begin
The difference is that attr_accessor creates both a setter and getter method,
while attr_reader creates a getter, and attr_writer creates a setter method.
Here we use attr_reader because we only need the getter method for retrieval,
and don't necessarily want to have a setter method that allows the ability
to change the attributes of the object.
=end

def title
  @title
end

def author
  @author
end

=begin
Would this code change the behavior of the program? What would the advantage be?
The behavior is the same.
An advantage to this would be if you wanted to format the getter method in any way 
you would be able to, as opposed to using an attr_reader that can not format output.
=end