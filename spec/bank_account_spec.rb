# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  let(:account) { BankAccount.new }

  describe '#deposit' do
    it 'can deposit money into an account' do
      expect(account.deposit(100)).to eq 'Thanks for your deposit of £100'
    end

    it 'increases balance when money is deposited' do
      account.deposit(100)
      expect(account.balance).to eq 100
    end

    it 'stores deposit transaction in transactions array' do
      account.deposit(100)
      expect(account.transactions.length).to eq 1
    end
  end

  describe '#withdraw' do
    it 'can withdraw money from an account' do
      account.deposit(100)
      expect(account.withdraw(50)).to eq 'Thanks, you withdrew £50'
    end

    it 'decreases balance when money is withdrawn' do
      account.deposit(100)
      account.withdraw(50)
      expect(account.balance).to eq 50
    end

    it 'raises error when withdrawal amount is more than balance' do
      account.deposit(100)
      expect do
        account.withdraw(200)
      end.to raise_error 'Insufficient funds, please add more money or choose a different amount'
    end

    it 'stores withdraw transaction in transactions array' do
      account.deposit(100)
      account.withdraw(50)
      expect(account.transactions.length).to eq 2
    end
  end

  describe 'initialize' do
    it 'initializes with an empty transactions array' do
      expect(account.transactions).to eq []
    end

    it 'initialises with a balance of zero' do 
      expect(account.balance).to eq 0
    end
  end
end
