def shuffle(people)
	people = people.shuffle
	print people
	puts ""
	return people
end

def return_pairs(people)
	people = shuffle(people)
	pairs_array = []
	num = people.length / 2
	for x in (0...num)
		pairs_array.push(people.slice(x * 2, 2))
	end
	
	print pairs_array
	return pairs_array
end

#return_pairs(["a", "b", "c", "d", "e", "f", "z"])





# def return_pairs(people)
# 	people = people.shuffle
# 	pairs_array = []

# 	for x in (people.length)
# 		for y in (0..1)
# 		pairs_array[]
# 		end
# 	end
# 		pairs_array.push(x)	
# 	end
# 	print pairs_array

# 	return pairs_array
# end
