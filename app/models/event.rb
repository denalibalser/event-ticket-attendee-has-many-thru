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
  
  def attendees  
    Attendee.all.map do |attendee|
      attendee.event == self 
    end 
  end  #instance  method that iterates through the array of Attendee instances and returns all the attendee instance's events that match the instance of the current Event 
  
  def average_age
    Attendee.age   
  end 
  
end


# Event.all
  # Returns an array of all Events
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
