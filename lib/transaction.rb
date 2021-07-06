class Transaction

    attr_reader :balance, :deposit, :withdraw, :date
    
    def initialize(balance: nil, deposit: nil, withdraw: nil, date: Time.now.strftime('%d/%m/%Y'))
        @balance = balance
        @deposit = deposit
        @withdraw = withdraw
        @date = date
    end

end