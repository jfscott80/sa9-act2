# spec/user_spec.rb
require "user"
RSpec.describe User do
    let(:user) { User.new("John Scott") }

    describe ".log_in" do
      it "logs the user in" do
        
        expect(user.log_in).to be true
      end
    end
  
    describe ".log_out" do
      it "logs the user out" do
        # user.log_out
        expect(user.log_out).to be false
      end
    end
  
    describe ".username" do
      it "returns the correct username" do
        expect(user.username).to eq("John Scott")
      end
    end
end