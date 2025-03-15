require 'gratitudes'

RSpec.describe Gratitudes do
    it "Adds 1 gratitude to output when only 1 item in array" do
        grat = Gratitudes.new()
        grat.add("family")
        result = grat.format()
        expect(result).to eq "Be grateful for: family"
    end

    it "Add 2 gratitudes to output when 2 items in the array" do
        grat = Gratitudes.new()
        grat.add("football")
        grat.add("darts")
        result = grat.format()
        expect(result).to eq "Be grateful for: football, darts"
    end

    it "Hanadles format call when array is empty" do
        grat = Gratitudes.new()
        result = grat.format()
        expect(result).to eq "Be grateful for: "
    end
end