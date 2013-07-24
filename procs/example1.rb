def returnProc
	var = proc {return "returnimg from proc"}
	var.call
	return "returing from proc last line"
end

def returnLambda
	var = lambda {return "returnimg from lambda"}
	var.call
	return "returing from lambda last line"
end

puts returnProc
puts returnLambda