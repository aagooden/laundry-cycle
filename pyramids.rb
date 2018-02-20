p "Height of Pyramid?"
x = gets
x = x.to_i

rowscount = 0
while rowscount < x 

count = 0

while count < x + 1
	if count < (x - rowscount)
		print " "
	else
		print "#"
end
	count += 1
end
print "  "

count = 0
while count < x + 1
	if count > (x - (x - rowscount))
		print " "
	else
		print "#"
end
	count += 1
end
print "\n"
rowscount += 1
end



