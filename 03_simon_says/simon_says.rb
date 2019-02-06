def echo str
	str
end

def shout str
	str.upcase
end

def repeat *args
	str = args[0]
	cnt = args[1] ? args[1]-1 : 1
	
	result = str

	cnt.times do
		result += " #{str}"
	end

	result
end

def start_of_word *args
	str = args[0]
	cnt = args[1] ? args[1] : 1

	str.slice 0, cnt
end

def first_word str
	str.split.first
end

def titleize str
	caps = str.split.map{|s| s[0].upcase + s.slice(1,s.length-1)}
	caps.map! do |s|
		if (s=="And" || s=="The" || s=="Over" || s=="A" || s=="Of")
			s = s.downcase
		end
		s
	end
	result = caps.join(' ')
	result = result[0].upcase + result.slice(1, result.length-1)
	result
end

