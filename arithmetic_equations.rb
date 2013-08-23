## Input Description
# The first line of input will always be two integers representing an inclusive range of integers you are to pick from when filling out the
# constants of your equation. After that, you are to print off a single equation and wait for the user to respond.
# The user may either try to
# solve the equation by writing the integer result into the console, or the user may type the letters 'q' or 'Q' to quit the application.
## Output Description
# If the user's answer is correct, print "Correct!" and randomly generate another equation to show to the user.
# Otherwise print "Try Again"
# and ask the same equation again. Note that all equations must randomly pick and place the operators, as well as randomly pick the
# equation's constants (integers) from the given range.
# You are allowed to repeat constants and operators. You may use either the star '*'
# or the letter 'x' characters to represent multiplication.

x,y = gets.chomp.split
r=*(x..y)
ops = [:+, :-, :*]
i = String.new
until i == "q"
  eq = %{#{r.sample} #{ops.sample} #{r.sample} #{ops.sample} #{r.sample} #{ops.sample} #{r.sample}}
  puts eq
  i = gets.chomp!
  eval(eq) == i.to_i ? puts "Correct!" : puts "Incorrect!"
end
