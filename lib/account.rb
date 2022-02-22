require './lib/statement.rb'
require 'date'

class Account
    attr_reader :balance, :transaction_details

    def initialize(statement = Statement.new)
        @balance = 0
        @transaction_details = []
        @statement = statement
    end

    def deposit_amount(date = Date.today, value)
        @balance += value.to_i
        @transaction_details << "#{date} ||#{value} 0 ||       || #{balance}"
    end 

    def withdraw_amount(date = Date.today, value)
        @balance -= value.to_i
        @transaction_details << "#{date} ||        ||#{value} || #{balance}"
    end 

    def balance_value
        return balance
    end

    def acct_statement
        @statement.print_statement
        @transaction_details.reverse.each do
            |item| 
            puts item
        end
    end

end

