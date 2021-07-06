class Statement 

    require_relative 'bank_account'
    attr_reader :header
    
    def initialize
        @header = "balance || deposit || withdraw || date"
    end
end