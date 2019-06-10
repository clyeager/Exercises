#create a guessing game

class GuessingGame
  GUESS_LIMIT = 7

  def initialize
    @number = (1..100).to_a.sample
    @guess_count = 0
    @current_guess = nil
  end

  def play
    loop do
      display_remaining_guesses
      number_guess
      display_guess_check
      break if won? || lost?
    end
    display_end_of_round
    reset
  end

  def display_remaining_guesses
    puts "You have #{GUESS_LIMIT - guess_count} guesses remaining."
  end

  def number_guess
    print "Enter a number between 1 and 100: "
    loop do
      self.current_guess = gets.chomp.to_i
      break if current_guess.between?(1, 100)
      print"Invalid guess. Enter a number between 1 and 100: "
    end
    self.guess_count += 1
  end

  def display_guess_check
    if current_guess < number
      puts "Your guess is too low."
    elsif current_guess > number
      puts "Your guess is too high."
    else
      puts "That's the number!"
    end
    puts ''
  end

  def lost?
    guess_count == GUESS_LIMIT && current_guess != number
  end

  def won?
    current_guess == number
  end

  def display_win
    puts "You won!"
  end

  def display_loss
    puts "You have no more guesses. You lost!"
  end

  def display_end_of_round
    display_win if won?
    display_loss if lost?
  end

  def reset
    self.number = (1..100).to_a.sample
    self.guess_count = 0
    self.current_guess = nil
  end

  protected

  attr_accessor :number, :guess_count, :current_guess
end


game = GuessingGame.new
game.play
