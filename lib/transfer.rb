class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if sender.valid? && receiver.valid? == true
      true
    else
      false
    end
  end

  def execute_transaction
    if valid? && @status == "pending"
      sender.balance - amount
      receiver.deposit(amount)
      @status = "complete"
  end
end
