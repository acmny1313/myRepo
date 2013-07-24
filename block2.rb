def header(&block)
	puts "thisis header"
	block.call
	
	rescue 
	 puts " resure the error"
	 
	ensure
		puts "this is footer"
	
end

header do 
	puts "this is the body of the block"
	raise "Error bitch"
end