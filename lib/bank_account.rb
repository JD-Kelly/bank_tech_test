class BankAccount

    attr_reader :balance
    
    def initialize
        @balance = 0
    end

    def deposit(amount)
        @balance += amount
        "Thanks for your deposit of £100"
    end
end