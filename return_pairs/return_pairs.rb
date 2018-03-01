def shuffle(people)
	people = people.shuffle
	return people
end

def return_pairs(people)
	people = shuffle(people)
	pairs_array = []
	num = people.length / 2

	for x in (0...num)
		pairs_array.push(people.slice(x * 2, 2))
	end

	if people.length % 2 != 0
		#puts pairs_array[pairs_array.length - 1]
		pairs_array[pairs_array.length - 1].push(people.last)
	end

	print pairs_array
	return pairs_array
end