# Exercise 15: Reading Files

#Gets the first argument and sets it to filename
filename = ARGV.first

#defines prompt and opens file and sets it to txt
prompt = "> "
txt = File.open(filename)

#displays filename, calls the read funtion which prints the file, then puts a new line
puts "Here's your file: #{filename}"
puts txt.read()
puts "\n"
txt.close()

#asks user to enter the filename again, gets input and trims it
puts "I'll also ask you to type it again:"
print prompt
file_again = STDIN.gets.chomp()

# opens file from prompt
txt_again = File.open(file_again)

#calls read funtion and it prints contents of the file
puts txt_again.read()
txt_again.close()

