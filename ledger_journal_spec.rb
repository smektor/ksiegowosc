require "./ledger_journal"
require "./transaction"

RSpec.describe LedgerJournal do
  describe "#validate correct journal" do
    let(:type) { "Income" }
    let(:date) { "02-09-2020" }
    let(:amount) { 100 }
    let(:supplier) { "Alice" }
    let(:transactions) do
      [Transaction.new(type, date, amount, supplier)]
    end
    let(:title) { "02-09-2020" }
    let(:start_date) { "01-09-2020" }
    let(:end_date) { "30-09-2020" }

    it "validates" do
      ledger_journal = described_class.new(transactions, title, start_date, end_date)

      expect(ledger_journal.validate).to be_truthy
    end
  end
end