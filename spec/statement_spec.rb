require 'statement'

describe Statement do
  let(:account) { double :account }
  let(:statement) { Statement.new(account) }
  describe '#initialize' do
    it 'statement initializes with account' do
      expect(statement.account).to eq account
    end
  end

  describe '#print' do
    context 'if not transactions have been made' do
      it 'returns statement headings only' do
        expect { statement.print }.to output("date || credit || debit || balance\n").to_stdout
      end
    end
  end
end