class BankAccount

    require_relative "transaction"
    attr_reader :balance, :transactions
    
    def initialize
        @balance = 0
        @transactions = []
    end

    def deposit(amount)
        @balance += amount
        "Thanks for your deposit of £#{amount}"
    end

    def withdraw(amount)
         fail "Insufficient funds, please add more money or choose a different amount" if amount > @balance
           
         @balance -= amount
         "Thanks, you withdrew £#{amount}"
    end
end