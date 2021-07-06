require 'statement'
require 'transaction'

describe Statement do 
    let(:statement) { Statement.new }
    let(:transaction) { Transaction.new }
    
    describe "#initialize" do 
        it "initializes with a header" do
            expect(statement.header).to eq "balance || deposit || withdraw || date"
        end
    end
end