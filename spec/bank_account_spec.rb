require 'bank_account'

describe BankAccount do 
    let(:account) { BankAccount.new }

    describe "#deposit" do
        it "can deposit money into an account" do 
            expect(account.deposit(100)).to eq "Thanks for your deposit of £100"
        end

        it "increases balance when money is deposited" do 
            account.deposit(100)
            expect(account.balance).to eq 100
        end
    end
end