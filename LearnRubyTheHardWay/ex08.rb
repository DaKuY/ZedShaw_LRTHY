# Exercise 8: Printing, Printing

# Sets a format to output strings
formatter = "%s %s %s %s"

#Prints out values using the formatter
puts formatter % [1, 2, 3, 4]
puts formatter % ["one", "two", "three", "four"]
puts formatter % [formatter, formatter, formatter, formatter]
puts formatter % [true, false, false, true]
puts formatter % [
	"I had this thing,", 
	"That you could type up right.", 
	"But it didn't sing.", 
	"So I said goodnight."
]

# mistakes: overlooked line 9 and didn't write it