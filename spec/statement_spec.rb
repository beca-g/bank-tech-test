require 'statement'

describe Statement do
  let(:account) { double :account }
  let(:statement) { Statement.new(account) }
  describe '#initialize' do
    it 'statement initializes with account' do
      expect(statement.account).to eq account
    end
  end
end