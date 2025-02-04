class Attendee
  attr_accessor :name, :age, :ticket, :event
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age 
    @event = event
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def events 
    Event.all.select do |event|
      event.attendee == self 
    end 
  end #instance method that is iterating through the array of Event instances and adds the instance of the event to an array if the block returns 'true'
  
  def buy_ticket(event)
    Ticket.new(event, self)
  end 
  
  def money_spent
    
  end
  
end


# Attendee.all
  # Returns an array of all Attendees
# Attendee#events
  # Returns an array of all Events that the Attendee is attending.
# Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events