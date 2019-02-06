def translate sentence
	pl_sen = sentence.split.map! do |word|
		word = word.downcase
		i = 0
		i += 1 until "aeiou".include?(word[i])
		i -= 1 unless word.slice(0..i).include? "qu"
		head = word.slice!(0..i)
		word += head + "ay"
		word
	end
	return pl_sen.join(' ')
end

