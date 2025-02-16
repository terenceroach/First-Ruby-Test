require 'greet.rb'

RSpec.describe "greet method" do
    it "appends 'Terry' to 'Hello, ' and returns 'Hello, Terry!" do
        result = greet("Terry")
        expect(result).to eq "Hello, Terry!"
    end
end