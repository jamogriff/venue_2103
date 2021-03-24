class Venue
  attr_reader :name, :capacity, :patrons

  # Initializes two parameters and an empty array
  def initialize(venue_name, venue_capacity)
    @patrons = []
    @name = venue_name
    @capacity = venue_capacity
  end

  # Adds an element as a string to the patrons array
  def add_patron(patron_name)
    @patrons << patron_name
  end

  # Returns a new array of patrons with capitalized elements
  # NOTE: an accumulator is created to hold this new array
  def yell_at_patrons
    capitalized_names = []
    @patrons.each do |patron|
      capitalized_names << patron.upcase
    end
    return capitalized_names
  end

  # If the elements in patrons array is greater or equal to @capacity,
  # then method returns true, else method will return false.
  def over_capacity?
    num_of_patrons = @patrons.count

    if num_of_patrons >= @capacity
      return true
    else
      return false
    end
  end

  # NOTE: This method along with its subsequent components
  # were all tested thoroughly using pry in ./test/pry_test.rb.
  # Method knocks off the last element added to the array until
  # over_capacity? is equal to false.
  def kick_out
    until self.over_capacity? == false do
      @patrons.pop # note that an accumulator is not necessary when using pop
    end
  end

end
