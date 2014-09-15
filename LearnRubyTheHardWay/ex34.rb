# Exercise 34 Accessing Elements Of Arrays

animals = ['bear', 'python', 'peacock',
'kangaroo', 'whale', 'platypus']

# The animal at 1. >> python
# The 3rd animal. >> peacock
# The 1st animal. >>  bear
# The animal at 3. >> kangaroo
# The 5th animal. >> whale
# The animal at 2. >> peacock
# The 6th animal. >> platypus
# The animal at 4. >> whale

puts "The 1st animal is at 0 and is a bear."
puts "The animal at 0 is the 1st animal and is a bear."

count = 0
animals.each_with_index {|animals, count| 
puts "The animal at #{count} and is a #{animals}."
puts "The animal at #{count} is the #{count+1}(st/end/rd/th) animal and is a #{animals}."}

  


