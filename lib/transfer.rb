require 'pry'
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
    binding.pry
    @sender.balance
    @receiver.deposit(money)
    
  end
end

