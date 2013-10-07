# chop2.rb
# code kata #2
# chop, this exercise demonstrates a binary search
# this implementation uses the iterative algorithm

puts "Hello, this is Code Kata #2 Chop"

def chop(val, array_of_ints)
	min = 0
	max = array_of_ints.size

	while(max >= min)
		mid = midpoint(min, max)
		if array_of_ints[mid] < val
			min = mid + 1
		elsif array_of_ints[mid] > val
			max = mid - 1
		else
			puts "found #{val}"
			return 0
		end
	end
	puts "did not find #{val}"
	return -1
end

def midpoint(min,max)
	return min + ((max - min) / 2)
end

chop(3, [1,3,5])
chop(2, [1,3,5])
