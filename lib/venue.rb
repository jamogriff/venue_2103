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
end
