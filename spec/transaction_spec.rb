require 'transaction'

describe Transaction do 
    let(:account) { BankAccount.new }

    describe "#initialize" do
        it "initlializes with a balance" do 
          transaction = Transaction.new(balance: 100)
          expect(transaction.balance).to eq 100
        end

        it "initializes with a deposit" do 
          transaction = Transaction.new(balance: 100, deposit: 200)
          expect(transaction.deposit).to eq 200
        end
    end
end