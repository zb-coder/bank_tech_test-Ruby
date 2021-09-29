require './lib/statement'

class Bank

  attr_reader :balance, :transactions
  def initialize(statement = Statement.new)
    @balance = 0
    @transactions = []
    @statement = statement
  end

  def credit(date, amount)
    @balance += amount
    transactions << "#{date} || #{amount} ||       || #{balance}"
  end

  def debit(date, amount)
    @balance -= amount
    transactions << "#{date} ||      ||  #{amount}  || #{balance}"
  end

  def print_sorted_array_with_header
    @statement.statement_header
    sorted_array = transactions
    sorted_array.reverse.each do
      |i| puts i
    end
  end
end

account = Bank.new
account.credit('10/01/2023', 1000)
account.credit('13/01/2023', 2000)
account.debit('14/01/2023', 500)
puts account.print_sorted_array_with_header
