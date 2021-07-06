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

    describe "#withdraw" do 
        it "can withdraw money from an account" do 
            account.deposit(100)
            expect(account.withdraw(50)).to eq "Thanks, you withdrew £50"
        end

        it "decreases balance when money is withdrawn" do 
            account.deposit(100)
            account.withdraw(50)
            expect(account.balance).to eq 50
        end
    end
end