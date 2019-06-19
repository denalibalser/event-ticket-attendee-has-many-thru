class Event
  attr_accessor :name, :ticket_price :attendee, :ticket
  
  @@all = []
  
  def initialize(name, ticket_price)
    @name = name
    @ticket_price = ticket_price
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def attendees  #instance  method that iterates through the array of Attendee instances and returns 
    Attendee.all.map do |attendee|
      
  end
  
end


# Event.all
  # Returns an array of all Events
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
