class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount, :bankaccount
  
  def initialize(sender, receiver, amount)
    @sender =  sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    sender.BankAccount.valid?
    receiver.BankAccount.valid?
  end
end
