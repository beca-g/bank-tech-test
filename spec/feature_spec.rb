require 'account'
require 'transaction'
require 'statement'

describe 'features' do
  let(:account) { Account.new }
  
  describe 'transactions' do
    it 'a deposit increases account balance' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end

    it 'decreases account balance' do
      account.deposit(1000)
      account.withdraw(100)
      expect(account.balance).to eq 900
    end

    it 'increases transaction history when a transaction is made' do
      account.deposit(1000)
      expect(account.transactions.length).to eq 1
    end
  end
end