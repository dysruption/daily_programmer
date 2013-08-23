# # Input Description
# On standard console input, you will be given two space-delimited integers N and M: N is the number of students
# (which ranges from 1 to 60, inclusive), and M is the number of assignments (which ranges from 4 to 100, inclusive).
# This will be followed by N lines of text, each starting with an upper-case unique string being is your students name.
# This is then followed by M integers, which are the grades ranging from 0 to 20, inclusively.
# # Output Description
# On the first line of output, print the class' average grade.
# Then, for each student, print their name and average grade (up to two decimal points precision).

def grades(input)
  lines = input.split(/\n/)
  grades = lines[1..lines.length]
  s = lines[0].split(/\s/)
  n = s[0].to_f
  m = s[1].to_f
  avgs = Hash.new
  grades.each do |line|
    split_line = line.split(/\s/)
    avgs[split_line[0]] = split_line[1..m].inject(0){|sum, x| sum + x.to_f} / m
  end
  avg = (avgs.to_a.inject(0){|sum, x| sum + x[1].to_f} / n).round(2).to_s
  avgs.each do |k, v|
    avg += "\n" + k.to_s + " " + v.to_s
  end
  puts avg
end

grades "3 5
JON 19 14 15 15 16
JEREMY 15 11 10 15 16
JESSE 19 17 20 19 18"
