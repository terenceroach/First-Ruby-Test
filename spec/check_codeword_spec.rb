require 'check_codeword.rb'

RSpec.describe "check_codeword method" do
    it "takes 'horse' to return 'Correct! Come in.'" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end

    it "takes 'hose' to return 'Close, but nope.'" do
        result = check_codeword("hose")
        expect(result).to eq "Close, but nope."
    end

    it "takes 'chose' to return 'Wrong!'" do
        result = check_codeword("chose")
        expect(result).to eq "Wrong!"
    end
end