require 'Account'

describe Account do
  let(:account) { Account.new }

  describe '#initalize' do
    it 'accounts are initalized with a balance of zero' do
      expect(account.balance).to eq 0
    end
  end

  describe '#deposit' do
    it 'can deposit into the account' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
  end

  describe '#withdraw' do
    it 'can withdraw from an account' do
      account.deposit(1000)
      account.withdraw(100)
      expect(account.balance).to eq 900
    end
  end
end
