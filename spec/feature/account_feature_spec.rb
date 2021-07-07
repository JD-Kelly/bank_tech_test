require 'bank_account'

describe 'feature_test' do 
    let(:account) { BankAccount.new }
    
    it 'allows user to deposit, withdraw and print a statement' do
        account.deposit(100)
        account.withdraw(50)
        header = "date || credit || debit || balance \n"
        account.statement
        expect { account.statement }.to output(/#{header}/n).to_stdout
    end
end
        

