class Transfer
  attr_accessor :sender, :receiver, :amount
  attr_writer :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
end
