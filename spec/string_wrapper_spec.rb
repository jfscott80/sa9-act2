require "string_wrapper"
RSpec.describe StringWrapper do
    let(:wrap) { StringWrapper.new("Hello")}
    describe "#reverse" do
    it "reverses the string" do
        expect(wrap.reverse).to eq("olleH")
      end
    end
  
    describe "#upcase" do
      it "converts the string to uppercase" do
        expect(wrap.upcase).to eq("HELLO")
        end
    end
  
    describe "#downcase" do
      it "converts the string to lowercase" do
        expect(wrap.downcase).to eq("hello")
      end
    end
  end