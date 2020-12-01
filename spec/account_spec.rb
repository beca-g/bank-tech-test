require 'Account'

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
  end

  describe '#withdraw' do
    it 'decreases account balance' do
      account.deposit(1000)
      account.withdraw(100)
      expect(account.balance).to eq 900
    end
  end
end
