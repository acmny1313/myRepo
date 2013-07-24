require 'erb'
require 'open-uri'
require 'uri'

class TitleFinder

	attr_reader :title
	attr_reader :url

	def initialize(url)
		@url = url
		siteUrl = open(url).read
		@title = siteUrl
		@title = title.slice!(/(<title>).*(<\/title>)/)
		
	end
	
end
	
	

newTitle = TitleFinder.new("http://rubular.com/")

display = <<-TEMP
	This is the title from <%= newTitle.url %>
	  the title is <%= newTitle.title %>
	TEMP
	
myErb = ERB.new(display)

puts myErb.result


