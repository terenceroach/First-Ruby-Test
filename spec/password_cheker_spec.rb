require 'password_checker'

RSpec.describe PasswordChecker do
    it "Returns true when a password of 8 characters given" do
        password = PasswordChecker.new()
        result = password.check("sciences")
        expect(result).to eq true
    end

    it "Returns true when a password greater than 8 characters given" do
        password = PasswordChecker.new()
        result = password.check("Liverpool")
        expect(result).to eq true
    end

    context "Fails when passing in invalid passwords" do
        it "fails with 7 character password" do
            password = PasswordChecker.new()
            expect {password.check("science")}.to raise_error "Invalid password, must be 8+ characters."
        end

        it "fails with 1 character password" do
            password = PasswordChecker.new()
            expect {password.check("T")}.to raise_error "Invalid password, must be 8+ characters."
        end
        it "fails with no characters given" do
            password = PasswordChecker.new()
            expect {password.check("")}.to raise_error "Invalid password, must be 8+ characters."
        end
    end
end