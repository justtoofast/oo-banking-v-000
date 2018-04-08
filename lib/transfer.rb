class Transfer
  attr_accessor :sender, :receiver, :amount
  attr_writer :pending

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
end
