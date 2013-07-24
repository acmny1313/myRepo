def sayHello(&block)
	puts "hello"
	name = block.call
	puts " you enter #{name}"
end

sayHello do
	puts "this is inside bock"
	"Drew"
end 