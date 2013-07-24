class BankAccount

	attr_reader :balance
	
class << self
	
	def create(fName, lName)
		@accounts ||= []
		@accounts << BankAccount.new(fName, lName)
	end
	
	def find(fName, lName)
		@accounts.find{|account| account.fullName == "#{fName} #{lName}"}
	end
	
end 


	def	initialize(fName, lName)
		@balance = 0
		@fName = fName
		@lName = lName
	end
	
	def fullName
		"#{@fName} #{@lName}"
	end
	
	def deposit(amount)
		@balance += amount
	end 
	
	def withdraw(amount)
		@balance -= amount
	end
	
	private
	def reset!
		@balance = 0
	end 
	
	
end

