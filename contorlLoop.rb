

animals = %w(cat dog snake frog)
count = 0

for animal in animals
	puts "The Animal #{animal}"
	break if count == 10
	
	count += 1
	
	redo if animal == 'dog'
end

