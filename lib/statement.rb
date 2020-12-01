class Statement
  attr_reader :account
  def initialize(account)
    @account = account
  end

  def print 
    puts 'date || credit || debit || balance'
  end
end