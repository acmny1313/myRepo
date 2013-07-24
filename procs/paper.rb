class Paper

	def initialize(&block)
		yeild self if block_given?
	end
	
	def setVar
		return Proc.new do |kind, val|
			[kind, val.join(": ")
		end