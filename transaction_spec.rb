require "./transaction"

RSpec.describe Transaction do
  describe "#validate correct transaction" do
    let(:type) { "Income" }
    let(:date) { "02-09-2020" }
    let(:amount) { 100 }
    let(:supplier) { "Alice" }

    it "validates" do
      transaction = described_class.new(type, date, amount, supplier)

      expect(transaction.validate).to be_truthy
    end
  end
end