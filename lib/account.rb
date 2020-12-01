class Account
  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(num)
    transaction_log('credit', num)
    @balance += num
  end

  def withdraw(num)
    raise 'Insufficient funds' if num > @balance

    transaction_log('debit', num)
    @balance -= num
  end

  private

  def transaction_log(type, amount)
    @transactions << Transaction.new(type: type, amount: amount)
  end
end
