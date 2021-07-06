class Transaction

    attr_reader :balance, :deposit
    
    def initialize(balance: nil, deposit: nil)
        @balance = balance
        @deposit = deposit
    end

end