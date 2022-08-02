class Transaction
  def initialize(type, date, amount, supplier)
    @type = type
    @date = date
    @amount = amount
    @supplier = supplier
  end
  attr_reader :type, :date, :amount, :supplier

  def validate
    type && date && amount && supplier
  end
end