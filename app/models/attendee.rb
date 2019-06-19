class Attendee
  attr_accessor :name, :age, :ticket, :events
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age 
    @@all << self 
  end 
  
  
  
end

# Attendee.all
  # Returns an array of all Attendees
# Attendee#events
  # Returns an array of all Events that the Attendee is attending.
# Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events