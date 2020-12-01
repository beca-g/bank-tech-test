require 'statement'

describe Statement do
  let(:account) { Account.new }
  let(:statement) { Statement.new(account) }
  let(:date) { Time.now.strftime('%d/%m/%Y') }
  let(:deposit) { double :transaction, date: date, type: 'credit', amount: 1000 }
  let(:withdraw) { double :transaction, date: date, type: 'debit', amount: 100 }

  describe '#initialize' do
    it 'statement initializes with account' do
      expect(statement.account).to eq account
    end
  end

  describe '#print' do
    let(:account) { double :account, transactions: [] }
    context 'no transactions have been made' do
      it 'prints statement headings only' do
        expect { statement.print }.to output("date || credit || debit || balance\n").to_stdout
      end
    end

    context 'deposit generated' do
      let(:account) { double :account, transactions: [deposit] }
      it 'prints statement with transaction details' do
        statement_body = "date || credit || debit || balance\n#{date} || 1000.00 || || 1000.00\n"
        expect { statement.print }.to output(statement_body).to_stdout
      end
    end

    context 'serveral transactions' do
      let(:account) { double :account, transactions: [deposit, withdraw] }
      it 'prints statement with transaction details in reverse order' do
        statement_body = "date || credit || debit || balance\n#{date} || || 100.00 || 900.00\n#{date} || 1000.00 || || 1000.00\n"
        expect { statement.print }.to output(statement_body).to_stdout
      end
    end
  end
end
