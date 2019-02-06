class Timer
	def initialize
		@sec = 0
		@min = 0
		@hr = 0
	end
	def seconds
		@sec
	end
	def seconds=(new_sec)
		@hr = (new_sec / 3600).to_i % 24
		@min = (new_sec / 60).to_i % 60
		@sec = new_sec % 60
	end
	def time_string
		"#{0 if @hr<10}#{@hr}:#{0 if @min < 10}#{@min}:#{0 if @sec < 10}#{@sec}"
	end
end

