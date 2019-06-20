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
    Attendee.all.select do |attendee|
      attendee.event == self 
    end 
  end  #instance  method that iterates through the array of Attendee instances and adds the event instance to an array if the block returns 'true' 
  
  def sell_ticket(attendee)
    Attendee.new(name, age, self)
  end
  
  def money_made
  end
  
  
  def average_age
    Attendee.age   
  end 
  
end

`Event#sell_ticket`
  + Accepts an `Attendee` instance as an argument and makes it so that, when `#attendees` is called on this `Event` instance, that `Attendee` instance will show up in the array.
+ `Event#money_made`
  + Returns an integer that is the product of the number of `Ticket`s sold for this event and the price of the `Ticket`.
+ `Event#average_age`
  + Returns the average age of all the `Attendee`s that will be at the `Event`

# Event.all
  # Returns an array of all Events
# Event#attendees
  # Returns an array of Attendee that have Tickets for the Event
# Event#average_age
  # Returns the average age of all the Attendees that will be at the Event
