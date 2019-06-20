class Attendee
  attr_accessor :name, :age, :ticket, :event
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def events 
    Event.all.map do |event|
      event.attendee == self 
    end 
  end #instance method that is iterating through the array of Event instances and returns the event that is equal to the attendee  instance 
  
  def money_spent
    events.ticket_price
  end
  
end

# Attendee.all
  # Returns an array of all Attendees
# Attendee#events
  # Returns an array of all Events that the Attendee is attending.
# Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events