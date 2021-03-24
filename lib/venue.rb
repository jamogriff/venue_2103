class Venue
  attr_reader :name, :capacity, :patrons

  def initialize(venue_name, venue_capacity)
    @patrons = []
    @name = venue_name
    @capacity = venue_capacity
  end

  def add_patron(patron_name)
    @patrons << patron_name
  end

  def yell_at_patrons
    capitalized_names = []
    @patrons.each do |patron|
      capitalized_names << patron.upcase
    end
    return capitalized_names
  end

  def over_capacity?
    capacity = 5
    num_of_patrons = @patrons.count

    # if the items in patrons array is greater or equal to capacity,
    # then returns true, else will return false.
    if num_of_patrons >= capacity
      return true
    else
      return false
    end
  end

  def kick_out
    until self.over_capacity? == false do
      @patrons.pop # note that an accumulator is not necessary when using pop
    end
  end
end
