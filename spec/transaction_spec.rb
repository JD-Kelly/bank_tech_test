require 'transaction'

describe Transaction do 
    let(:account) { BankAccount.new }

    describe "#initialize" do
        it "initlializes with a balance" do 
          transaction = Transaction.new(balance: 100)
          expect(transaction.balance).to eq 100
        end
    end
end