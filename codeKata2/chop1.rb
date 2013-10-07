# chop.rb
# code kata #2
# chop, this exercise demonstrates a binary search
# this implementation uses the recursive algorithm

puts "Hello, this is Code Kata #2 Chop"

def chop(val, array_of_ints)
	if (array_of_ints.size == 1)
		if (array_of_ints[0] == val)
			puts "Found value: #{val}"
			return 0;
		else
			puts "#{val} not found in list"
			return -1;
		end
	elsif (array_of_ints.size >= 2)
		mid = (array_of_ints.size/2)
		if (array_of_ints.size % 2 == 1) then mid + 1 end
#puts "array of ints has #{array_of_ints.size} elements and it's mid is #{mid}"

		subarray1 = array_of_ints[0,mid]
		subarray2 = array_of_ints[mid,array_of_ints.size]

		if (val >= array_of_ints[mid])
			chop(val, subarray2)
		elsif (val < array_of_ints[mid])
			chop(val, subarray1)
		end
	else
		puts "Empty array"
		return -1;
	end
end


chop(2, [1,3,5])
chop(5, [1,3,5])
chop(3, [1,3,5])
chop(3, [])
chop(3, [1])
chop(1, [1])

#test cases
#def test_chop
#	assert_equal(-1, chop(3, []))
#	assert_equal(-1, chop(3, [1]))
#	assert_equal(0,  chop(1, [1]))
#
#	assert_equal(0,  chop(1, [1, 3, 5]))
#	assert_equal(1,  chop(3, [1, 3, 5]))
#	assert_equal(2,  chop(5, [1, 3, 5]))
#	assert_equal(-1, chop(0, [1, 3, 5]))
#	assert_equal(-1, chop(2, [1, 3, 5]))
#	assert_equal(-1, chop(4, [1, 3, 5]))
#	assert_equal(-1, chop(6, [1, 3, 5]))
#
#	assert_equal(0,  chop(1, [1, 3, 5, 7]))
#	assert_equal(1,  chop(3, [1, 3, 5, 7]))
#	assert_equal(2,  chop(5, [1, 3, 5, 7]))
#	assert_equal(3,  chop(7, [1, 3, 5, 7]))
#	assert_equal(-1, chop(0, [1, 3, 5, 7]))
#	assert_equal(-1, chop(2, [1, 3, 5, 7]))
#	assert_equal(-1, chop(4, [1, 3, 5, 7]))
#	assert_equal(-1, chop(6, [1, 3, 5, 7]))
#	assert_equal(-1, chop(8, [1, 3, 5, 7]))
#end
