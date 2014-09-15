# Exercise 16: Reading And Writing Files

# close – Closes the ?le. Like File->Save.. in your editor.
# • read – Reads the contents of the ?le, you can assign the result to a variable.
# • readline – Reads just one line of a text ?le.
# • truncate – Empties the ?le, watch out if you care about the ?le.
# • write(stuff) – Writes stuff to the ?le.

 
filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN or ENTER."

print "?"
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close()