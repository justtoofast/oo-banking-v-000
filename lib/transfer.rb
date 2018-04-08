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
    if sender.valid? == false
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    else
      sender.remove(amount)
      receiver.deposit(amount)
      @status = "complete"
    end
  end
end
