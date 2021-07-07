# frozen_string_literal: true

require 'transaction'

describe Transaction do
  let(:account) { BankAccount.new }

  describe '#initialize' do
    it 'initlializes with a balance' do
      transaction = Transaction.new(balance: 100)
      expect(transaction.balance).to eq 100
    end

    it 'initializes with a deposit' do
      transaction = Transaction.new(balance: 100, deposit: 200)
      expect(transaction.deposit).to eq 200
    end

    it 'initializes with a withdrawal' do
      transaction = Transaction.new(balance: 100, deposit: 200, withdraw: 100)
      expect(transaction.withdraw).to eq 100
    end

    it 'initializes with a date' do
      transaction = Transaction.new(balance: 100, deposit: 200, withdraw: 100, date: Time.now.strftime('%d/%m/%Y'))
      expect(transaction.date).to eq Time.now.strftime('%d/%m/%Y')
    end
  end

  describe '#transaction_display' do
    it 'displays a transaction' do
      transaction = Transaction.new(date: Time.now.strftime('%d/%m/%Y'), deposit: 200, withdraw: 100, balance: 100)
      expect(transaction.transaction_display).to eq "#{Time.now.strftime('%d/%m/%Y')} || 200.00 || 100.00 || 100.00"
    end
  end
end
