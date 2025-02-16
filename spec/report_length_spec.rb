require 'report_length'

RSpec.describe("report_length method") do
    it("take a string with a length 5 and returns the length in a string") do
        result = report_length("terry")
        expect(result).to eq "This string was 5 characters long"
    end

    it("take a string with a length 6 and returns the length in a string") do
        result = report_length("samuel")
        expect(result).to eq "This string was 6 characters long"
    end

    it("take a string with a length 10 and returns the length in a string") do
        result = report_length("sarahroach")
        expect(result).to eq "This string was 10 characters long"
    end
end