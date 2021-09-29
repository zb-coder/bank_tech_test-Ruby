class Bank

  attr_reader :balance, :transactions
  def initialize
    @balance = 0
    @transactions = []
  end

  def credit(date, amount)
    @balance += amount
  end

  def debit(date, amount)
    @balance -= amount
  end
end