require 'statement'

describe Statement do 
    let(:statement) { Statement.new }
    
    describe "#initialize" do 
        it "initializes with a header" do
            expect(statement.header).to eq "balance || deposit || withdraw || date"
        end
    end
end