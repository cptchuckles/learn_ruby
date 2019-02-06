def add x, y
	x + y
end

def subtract x, y
	x - y
end

def sum array
	array.sum
end

def mul *args
	product = 1
	args.each do |x|
		product *= x
	end
	product
end

def pow x, y
	x**y
end

def fac x
	return 1 if x < 2
	return x * fac(x-1)
end

