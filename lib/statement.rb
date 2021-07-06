# frozen_string_literal: true

class Statement
  require_relative 'bank_account'
  require_relative 'statement'
  require_relative 'transaction'
  attr_reader :header

  def initialize
    @header = 'date || deposit || withdraw || balance'
  end

  def display_statement(each_transaction)
    puts @header
    puts each_transaction.join("\n")
  end
end
