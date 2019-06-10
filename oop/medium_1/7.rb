#update guessing game to take a low and high value for the secret number

class GuessingGame
  def initialize(low, high)
    @low = low
    @high = high
    @guess_limit = compute_guess_limit
    @number = (low.to_i..high.to_i).to_a.sample
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

  def compute_guess_limit
    Math.log2(high - low).to_i + 1
  end

  def display_remaining_guesses
    puts "You have #{guess_limit - guess_count} guesses remaining."
  end

  def number_guess
    print "Enter a number between #{low} and #{high}: "
    loop do
      self.current_guess = gets.chomp.to_i
      break if current_guess.between?(low, high)
      print"Invalid guess. Enter a number between #{low} and #{high}: "
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
    guess_count == guess_limit && current_guess != number
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
    self.number = (low.to_i..high.to_i).to_a.sample
    self.guess_count = 0
    self.current_guess = nil
  end

  protected

  attr_accessor :number, :guess_count, :current_guess
  attr_reader :guess_limit, :low, :high
end


game = GuessingGame.new(100, 4000)
game.play