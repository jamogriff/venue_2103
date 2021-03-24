require './lib/venue'

# This file was used to verify the behavior of
# the pop method as well as prove the inner workings
# of the until loop.

test_venue = Venue.new('Ogden', 5)

# Useful for quick test, but can't tell whether pop is
# acting on first or last element in array
# 7.times do
#   test_venue.add_patron("Steve")
# end

# Adding 7 individual patrons to the Ogden
test_venue.add_patron('Mike')
test_venue.add_patron('Megan')
test_venue.add_patron('Bob')
test_venue.add_patron('Seymour')
test_venue.add_patron('Melinda')
test_venue.add_patron('Broseph')
test_venue.add_patron('Greg the II')

# This loop is logically the same as the
# kick_out method, but inserts pry execution
# after every iteration.
until test_venue.over_capacity? == false do
  require 'pry'; binding.pry
  test_venue.patrons.pop # note that an accumulator is not necessary when using pop
end
