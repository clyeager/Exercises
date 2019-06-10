#fix the program to run properly

class Book
  attr_accessor :title, :author

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

#Further exploration-how does this differ from the previous strategy?

=begin
Using setter methods to set each attribute separately could cause the potential
problem of accidentally changing the title or author. However, the advantage is that
if you accidentally set the wrong title or author during instantiation, you
would be able to fix it down the road.
=end
