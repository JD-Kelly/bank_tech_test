# frozen_string_literal: true

require 'statement'

describe Statement do
  let(:statement) { Statement.new }

  describe '#initialize' do
    it 'initializes with a header' do
      expect(statement.header).to eq 'date || deposit || withdraw || balance'
    end
  end

  describe '#display_statement' do
    it 'displays all transactions via a statement' do
      input = ['transaction:0', 'transaction:1']
      output = "\ntransaction:0\ntransaction:1\n"
      expect { statement.display_statement(input) }.to output(statement.header + output).to_stdout
    end
  end
end
