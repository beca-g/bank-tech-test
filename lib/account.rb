class Account
  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(num)
    @transactions << Transaction.new(type: 'credit', amount: num)
    @balance += num
  end

  def withdraw(num)
    @transactions << Transaction.new(type: 'debit', amount: num)
    @balance -= num
  end
end
