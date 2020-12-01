require 'account'

describe Account do
  let(:account) { Account.new }
  
  describe '#initalize' do
    it 'accounts are initalized with a balance of zero' do
      expect(account.balance).to eq 0
    end

    it 'accounts are initalized with no transaction history' do
      expect(account.transactions.length).to eq 0
    end
  end

  describe '#deposit' do
    it 'increases account balance' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end

    it 'increases transaction history when a deposit is made' do
      account.deposit(1000)
      expect(account.transactions.length).to eq 1
    end
  end

  describe '#withdraw' do
    it 'decreases account balance' do
      account.deposit(1000)
      account.withdraw(100)
      expect(account.balance).to eq 900
    end

    it 'raises and error when there are insufficient funds' do
      expect { account.withdraw(100) }.to raise_error 'Insufficient funds'

    end

    it 'increases transaction history when a withdrawal is made' do
      account.deposit(1000)
      account.withdraw(100)
      expect(account.transactions.length).to eq 2
    end
  end
end
