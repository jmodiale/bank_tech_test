class Account
    attr_reader :balance

    def initialize
        @balance = 0
    end

    def deposit_amount(value)
        @balance += value.to_i
    end 

    def withdraw_amount(value)
        @balance -= value.to_i
    end 

    def balance_value
        return balance
    end

end

