class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount, :BankAccount
  
  def initialize(sender, receiver, amount)
    @sender =  sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    @sender.class.BankAccount.valid?
    @receiver.class.BankAccount.valid?
  end
end
