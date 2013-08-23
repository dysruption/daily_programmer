n = gets.chomp.to_i
m = gets.chomp.to_i
o = "No solution found"
(1..(("9" * n).to_i)).to_a.reverse.each { |x|
	if x % m  == 0
		o = x
		break
	end
}
puts o