require 'present'

RSpec.describe Present do
    it "Returns 'Toy' when it is wrapped" do
        present = Present.new()
        present.wrap('Toy')
        result = present.unwrap()
        expect(result).to eq "Toy"
    end

    context "when no present is wrapped" do
        it "fails" do
            present = Present.new()
            expect {present.unwrap()}.to raise_error "No contents have been wrapped."
        end
    end

    context "when trying to wrap a second present" do
        it "fails" do
            present = Present.new()
            present.wrap("Toy")
            expect {present.wrap("Ball")}.to raise_error "A contents has already been wrapped."
        end
    end
end