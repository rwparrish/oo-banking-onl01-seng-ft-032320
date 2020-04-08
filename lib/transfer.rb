class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  attr_reader :balance
  
  def initialize(sender, receiver, amount)
    @sender =  sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    @sender.valid?
    @receiver.valid?
  end
  
  def execute_transaction
    @sender.balance = balance - amount
    @receiver.deposit(money)
    
  end
end

