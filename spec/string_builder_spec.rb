require 'string_builder'

RSpec.describe StringBuilder do
    it "Initialises with an empty string" do
        string = StringBuilder.new()
        result = string.output()
        expect(result).to eq ""
    end

    it "Initialises with a string length of 0" do
        string = StringBuilder.new()
        result = string.size()
        expect(result).to eq 0
    end

    it "Returns 'The' when 'The' is passed via the add method" do
        string_builder = StringBuilder.new()
        string_builder.add('The')
        result = string_builder.output()
        expect(result).to eq "The"
    end

    it "String length equals 3 when 'The' is passed via the add method" do
        string_builder = StringBuilder.new()
        string_builder.add("The")
        result = string_builder.size()
        expect(result).to eq 3
    end
end