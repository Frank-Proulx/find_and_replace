#!/usr/bin/ruby

require('./lib/find_and_replace')

file = File.open("two_cities.txt")
file_data = file.read
file.close
searched = Search.new(file_data)
puts searched.find_and_replace('the', 'tomaotes')