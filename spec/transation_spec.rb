require 'transaction'

describe 'Transaction' do
  let(:transaction) { Transaction.new(type: 'deposit') }

  describe '#initialize' do
   it 'stores the transaction type' do
    expect(transaction.type).to eq 'deposit'
   end
  end
end