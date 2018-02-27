def off_by_one(num1, num2)
	matches = 0
	for x in (0...num1.length)
		if num1[x] == num2[x]
			matches += 1
		end
	end	

	return matches
end

def array_off_by_ones(winner, num_array)
	matches_array = []
	# check_length = winner.length
	for x in (0...num_array.length)
		check_num = num_array[x]
		if winner.length == check_num.length
			if off_by_one(winner, check_num) == winner.length - 1
				matches_array.push(check_num)
			end
		end
	end
	return matches_array
end

def full_match(winner, num_array)
	full_match_array = []
	for x in (0...num_array.length)
		check_num = num_array[x]
		if winner.length == check_num.length 
			if off_by_one(winner, check_num) == winner.length
				full_match_array.push(check_num)
			end
		end
	end
	return full_match_array
end


