require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'
require 'minitest/reporters'
MiniTest::Reporters.use!


class CashRegisterTest < MiniTest::Test
  def setup
    @register = CashRegister.new(400)
    @transaction = Transaction.new(50)
  end

  def test_accept_money
    @transaction.amount_paid = 50
    @register.accept_money(@transaction)
    assert_equal(450, @register.total_money)
  end

  def test_change
    @transaction.amount_paid = 50
    @register.accept_money(@transaction)
    change = @register.change(@transaction)
    assert_equal(0, change)
  end
end