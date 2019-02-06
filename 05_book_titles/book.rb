class Book
	def title
		@title
	end
	def title=(new_title)
		@title = new_title.downcase.split.map.with_index{|word, i|
			word.capitalize! unless "a an and or but the of in from under over between".split.include?(word) and i > 0
			word
		}.join(' ')
	end
end

