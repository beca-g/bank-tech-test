require 'Account'

describe Account do
  let(:account) { Account.new }

  describe '#initalize' do
    it 'accounts are initalized with a balance of zero' do
      expect(account.balance).to eq 0
    end
  end
end