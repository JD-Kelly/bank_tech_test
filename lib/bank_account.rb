# frozen_string_literal: true

class BankAccount
  require_relative 'transaction'
  require_relative 'statement'
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    deposit_transaction = Transaction.new(balance: @balance, deposit: amount)
    @transactions.push(deposit_transaction)
  end

  def withdraw(amount)
    raise 'Insufficient funds' if amount > @balance

    @balance -= amount
    withdraw_transaction = Transaction.new(balance: @balance, withdraw: amount)
    @transactions.push(withdraw_transaction)
  end

  def statement
    statement = Statement.new
    each_transaction = @transactions.map(&:transaction_display)
    statement.display_statement(each_transaction)
  end
end
