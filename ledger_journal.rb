require "./transaction"
require "Date"

class LedgerJournal
  def initialize(transactions, title, start_date, end_date)
    @transactions = transactions
    @title = title
    @start_date = Date.parse(start_date)
    @end_date = Date.parse(end_date)
  end

  attr_reader :title, :start_date, :end_date, :transactions

  def validate
    # title && validate_dates && validate_transactions
    true
  end

  def balance(start_date, end_date)

  end

  def transactions(transaction_type)
    transactions.select
  end

  private

  def validate_dates
    start_date < end_date
  end
end