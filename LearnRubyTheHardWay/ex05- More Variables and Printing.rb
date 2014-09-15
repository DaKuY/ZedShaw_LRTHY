# Exercise5: More Variables and Printing

name = 'Zed A. Shaw'
age = 35 # not a line
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

# This is similar to C. Prints with designating the value type. For example, %d is double (doesn't have decimal), %s is string then we define the value after the quotes.
puts "Let's talk about %s." % name
puts "He's %d inches tall." % height
puts "He's %d pounds heavy." % weight
puts "Actually that's not to heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." %[age, height, weight, age + height + weight]

# Extra Credit
# 1. done
# 2. no
# 3. done
# 4. 

kilo_per_pound = 2.2046
weight_kilo = weight / kilo_per_pound

cm_per_inch = 2.54
height_cm = height * cm_per_inch

# The %f means floating point; meaning it has decimal places. The '.2' limits the decimal to 2 places.
puts "\nConvert lbs to kilos: He weighs %.2f Kilos." % weight_kilo
puts "Convert inches to centimeters: He is %.2f centimeters tall." % height_cm