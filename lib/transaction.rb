class Transaction

    attr_reader :balance, :deposit, :withdraw
    
    def initialize(balance: nil, deposit: nil, withdraw: nil)
        @balance = balance
        @deposit = deposit
        @withdraw = withdraw
    end

end