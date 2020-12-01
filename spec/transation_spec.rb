require 'transaction'

describe 'Transaction' do
  let(:transaction) { Transaction.new(type: 'deposit', amount: 1000) }

  describe '#initialize' do
   it 'stores the transaction type' do
    expect(transaction.type).to eq 'deposit'
   end

   it 'stores the transaction amount' do
     expect(transaction.amount).to eq 1000
   end
  end
end