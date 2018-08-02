require 'httparty'

# Write a script that does the following when you run the file (`ruby city_biking.rb` from the terminal):

# Using HTTParty, make a GET request to the NYC citibike API (https://feeds.citibikenyc.com/stations/stations.json)

# Iterate through the data to return a list of the names of stations that have more than 40 total docks, and more than 5 bikes currently available. The list should include the number of available bikes, and should sort the stations by the number of bikes, descending.

# The list should be printed in a user-friendly way (i.e. not as a hash).

# Example output =>
# The following mega-stations have more than 5 bikes available:
# E 47 St & 2 Ave (22 bikes available)
# W 18 St & 6 Ave (16 bikes available)
# Broadway & W 49 St (4 bikes available)
 


def citibike
  bike_list =  puts HTTParty.get('https://feeds.citibikenyc.com/stations/stations.json')
end

citibike.each do |bike_stations|
  bike_stations.sort_by { |bikes| bikes[availableBikes]}
  if bike_stations[:totalDocks] >= 40 and bike_stations[:availableBikes] >= 5
    puts "#{bike_stations[:stationName]} ( #{bike_stations[:availableBikes]} )"
    end
  end  



citibike = citibikes[:stationBeanList]
citibikes.each do |bike_stations|
  if bike_stations[:totalDocks] >= 40 and bike_stations[:availableBikes] >= 5
     "#{bike_stations[:stationName]} ( #{bike_stations[:availableBikes]} bikes available)"
  end
end

