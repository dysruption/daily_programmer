## Input Description
# You will be given two integers, N and M, on standard console input.
# They will be space delimited values where N will range from 1 to 9, and M will range from 2 to 999,999,999.
## Output Description
# Print the largest integer within the range of 1 to the largest integer formed by N-digits, that is evenly-divisible by the integer M.
# You only need to print the largest integer, not the set of evenly-divisible integers. If there is no solution, print "No solution found".

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