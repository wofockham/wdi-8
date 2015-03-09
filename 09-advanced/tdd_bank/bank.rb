class Bank
  attr_reader :name
  attr_accessor :accounts

  def initialize(name)
    @name = name
    @accounts = {}
  end

  def create_account(account_name, deposit)
    @accounts[account_name] = deposit if deposit > 0
  end

  def deposit(account_name, amount)
    @accounts[account_name] += amount if amount > 0
  end

  def balance(account_name)
    @accounts[account_name]
  end

  def withdraw(account_name, amount)
    @accounts[account_name] -= amount if @accounts[account_name] >= amount
  end
end
