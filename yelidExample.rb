def showNum(nmbers = 10)
	i = 0
	
	while i < 10
		yield i 
			i+= 1
	end
end

showNum do |number|
	puts "the number is #{number}"
	
	number *= 2
	
	puts " numner * 2 : #{number}"
end

