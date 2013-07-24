name = "" 

until name == "Drew" do 
	puts "what is your name"
	name = gets.chomp
	puts "hello, #{name}"
end