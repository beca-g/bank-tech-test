require 'account'

describe Account do
  let(:account) { Account.new }
  let(:date) { Time.now.strftime('%d/%m/%Y') }
  
  describe '#initalize' do
    it 'accounts are initalized with a balance of zero' do
      expect(account.balance).to eq 0
    end

    it 'accounts are initalized with no transaction history' do
      expect(account.transactions.length).to eq 0
    end
  end

  describe '#deposit' do
    it 'changes the account balance' do
      expect { account.deposit(1000) }.to change { account.balance }.from(0).to(1000)
    end

    it 'increases account balance' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
  end

  describe '#withdraw' do
    it 'changes the account balance' do
      account.deposit(1000)
      expect { account.withdraw(100) }.to change { account.balance }
    end

    it 'decreases account balance' do
      account.deposit(1000)
      account.withdraw(100)
      expect(account.balance).to eq 900
    end

    it 'raises and error when there are insufficient funds' do
      expect { account.withdraw(100) }.to raise_error 'Insufficient funds'
    end
  end

  describe '#print_statement' do
    it 'prints the account statement' do
      account.deposit(1000)
      account.withdraw(100)
      statement_body = "date || credit || debit || balance\n#{date} || || 100.00 || 900.00\n#{date} || 1000.00 || || 1000.00\n"
      expect { account.print_statement }.to output(statement_body).to_stdout
    end
  end
end
