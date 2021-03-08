class Oystercard
  attr_reader :balance

  MAX_BALANCE = 90

  def initialize
    @balance = 0
  end

  def top_up(amount)
    @amount = amount

    max_balance_exceeded ? exceeding_error : update_balance(amount)
  end

  def deduct(amount)
    @balance -= amount
  end

  private
  def max_balance_exceeded
    @amount + @balance > MAX_BALANCE
  end

  def exceeding_error
    raise "Error: maximum balance of #{MAX_BALANCE} exceeded"
  end

  def update_balance(amount)
    @balance += amount
  end
end
