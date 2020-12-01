class Statement
  attr_reader :account
  STATEMENT_HEADINGS = 'date || credit || debit || balance'
  def initialize(account)
    @account = account
  end

  def print 
    puts STATEMENT_HEADINGS
    if @account.transactions.length > 0
      puts "#{account.transactions[0].date} || #{'%.2f' % @account.transactions[0].amount} || || #{'%.2f' % @account.balance}"
    end
  end 
end