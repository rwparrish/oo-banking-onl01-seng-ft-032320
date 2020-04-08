class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sedner =  sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    
  end
end
