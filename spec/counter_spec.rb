require 'counter'

RSpec.describe Counter do
    it "Intialises with a count of 0" do
        count = Counter.new()
        result = count.report()
        expect(result).to eq "Counted to 0 so far."
    end

    it "Adds 1 to initial count and returns 1" do
        counter = Counter.new()
        counter.add(1)
        result = counter.report()
        expect(result).to eq "Counted to 1 so far."
    end

    it "Adds 5 to initial count and returns 5" do
        counter = Counter.new()
        counter.add(5)
        result = counter.report()
        expect(result).to eq "Counted to 5 so far."
    end

    it "Adds 3 to the count 3 times and returns 9" do
        counter = Counter.new()
        counter.add(3)
        counter.add(3)
        counter.add(3)
        result = counter.report()
        expect(result).to eq "Counted to 9 so far."
    end
end