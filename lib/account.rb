class Account
  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(num)
    @balance += num
  end

  def withdraw(num)
    @balance -= num
  end
end
