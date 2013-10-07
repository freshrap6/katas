#!/usr/bin/ruby -w

#weather_processor.rb

counter = 0
data = Hash.new
minDelta = 10000
day = 0
temp = 0
File.open("weather.dat", "r") do |infile|
	while (line = infile.gets)

		if line =~ /^\s+(\d+)\s+(\d+)\s+(\d+)/
			
			delta = $2.to_i - $3.to_i

			if delta < minDelta
				day = $1.to_i
				temp = delta
				minDelta = delta
			end
		end
	end
end

puts "Min Delta Belongs to day #{day} with a delta of #{temp}."
