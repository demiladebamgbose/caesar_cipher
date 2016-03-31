def caesar_cipher(string, n)
	string = string.split
	string =string.map do |x|
		x= x.chars.map do |y|
			y = step_char(y,n)
		end
		x.join
	end
	string.join(" ")
end
def step_char(charr, n)
	charr=charr.ord
	if charr <= 90 && charr >=65
		charr + n > 90 ? charr = charr - 26 + n : charr += n
	elsif charr <= 122 && charr >=95
		charr + n > 122 ? charr = charr - 26 + n : charr += n
	end
	charr.chr
end