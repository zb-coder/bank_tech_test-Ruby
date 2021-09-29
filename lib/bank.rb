class Bank

  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def credit(date, amount)
    @balance += amount
    transactions << "#{date} || #{amount} || || #{balance}"
  end

  def debit(date, amount)
    @balance -= amount
    transactions << "#{date} || || #{amount} || #{balance}"
  end
end