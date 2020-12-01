class Statement
  attr_reader :account
  STATEMENT_HEADINGS = "date || credit || debit || balance\n"
  def initialize(account)
    @account = account
    @balance = 0
  end

  def print 
    puts STATEMENT_HEADINGS + transaction_formular
  end 

  def transaction_formular
    @account.transactions.map do |transaction|
      transaction.type == 'credit' ? transaction_type = "#{'%.2f' % transaction.amount} ||" : transaction_type = "|| #{'%.2f' % transaction.amount}"
      "#{transaction.date} || #{transaction_type} || #{'%.2f' % update_balance(transaction)}\n"
    end.reverse.join('')
  end

  def update_balance(transaction)
    transaction.type == 'credit' ? @balance += transaction.amount : @balance -= transaction.amount
  end
end
