describe 'features' do
  let(:date) { Time.now.strftime('%d/%m/%Y') }

  describe 'transactions' do
    it 'prints a statement correctly' do
      account = Account.new
      account.deposit(1000)
      account.withdraw(100)
      expect { account.print_statement }.to output("date || credit || debit || balance\n#{date} || || 100.00 || 900.00\n#{date} || 1000.00 || || 1000.00\n").to_stdout
    end
  end
end
