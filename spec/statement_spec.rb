require 'statement'

describe Statement do
  let(:account) { double :account }
  let(:statement) { Statement.new(account) }
  let(:date) { Time.now.strftime('%d/%m/%Y') }
  let(:deposit) { double :transaction, date: date, type: 'deposit', amount: 1000}

  describe '#initialize' do
    it 'statement initializes with account' do
      expect(statement.account).to eq account
    end
  end

  describe '#print' do
    let(:account) { double :account, transactions: []}
    context 'no transactions have been made' do
      it 'prints statement headings only' do
        expect { statement.print }.to output("date || credit || debit || balance\n").to_stdout
      end
    end

    context 'deposit generated' do
      let(:account) { double :account, transactions: [deposit], balance: 1000 }
      it 'prints statement with transaction details' do
        statement_body = "date || credit || debit || balance\n#{date} || 1000.00 || || 1000.00\n"
        expect { statement.print }.to output(statement_body).to_stdout
      end
    end
  end
end