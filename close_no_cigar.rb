def off_by_one(num1, num2)
	matches = 0
	for x in (0...num1.length)
		if num1[x] == num2[x]
			matches += 1
		end
	end	
	
	return matches
end
