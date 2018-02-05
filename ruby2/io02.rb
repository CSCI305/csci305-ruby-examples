# Reading and Writing Files
File.open("testfile") do |file|
  while line = file.gets
    puts line
  end
end

# Iterators for Reading
IO.foreach("testfile") {|line| puts line}

IO.foreach("testfile") do |line|
  puts line
end

# Writing to Files
File.open("testfile2", "w") do |file|
  file.puts "This is a test"
end

# C++ style
endl = "\n"
STDOUT << 99 << " red balloons" << endl

# IO with Strings
require 'stringio'

ip = StringIO.new("now is\nthe time\nto learn\nRuby!")
op = StringIO.new("", "w")

ip.each_line do |line|
  op.puts line.reverse
end

puts op.string
