# Loops
while line = gets
  #...
end

until x > 60
  #...
end

File.foreach("ordinal") do |line|
  if (($. == 1) || line =~ /eig/) .. (($. == 3) || line =~ /nin/)
    print line
  end
end

print "Hello\n" while false
begin
  print "Goodbye\n"
end while false

# Iterators
3.times do
  print "Ho! "
end

0.upto(0) do |x|
  print x, " "
end
puts ""

0.step(12, 3) {|x| print x, " " }
puts ""

[1, 1, 2, 3, 5].each {|val| print val, " "}
puts ""

# For..In
for i in ['fee', 'fi', 'fo', 'fum']
  print i, " "
end
for i in 1..3
  print i, " "
end
for i in File.open("ordinal").find_all {|line| line =~ /d$/}
  print i.chomp, " "
end
puts

# Break, Redo, Next
while line = gets
  next if line =~ /^\s*#/ # skip comments
  break if line =~ /^END/ # stop at end
  redo if line.gsub!(/`(.*?)`/) { eval($1) }
end

# Retry
for i in 1..100
  print "Now at #{i}. Restart? "
  retry if gets =~ /^y/i
end
