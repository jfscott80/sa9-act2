require "bank_account"
RSpec.describe BankAccount do
    let(:acc) { BankAccount.new(20) }
    describe ".deposit" do
      it "increases the balance by the deposit amount" do
        expect(acc.deposit(30)).to eq(50)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        expect(acc.withdraw(10)).to eq(10)
      end

      it "does not change the balance if insufficient funds" do
        acc.withdraw(30)
        expect(acc.balance).to eq(20)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        expect(acc.balance).to eq(20)
      end
    end
  end