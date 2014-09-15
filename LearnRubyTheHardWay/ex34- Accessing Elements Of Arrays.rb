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
place = '1st'

animals.each_with_index {|animals, count| 
  puts "The animal at #{count} and is a #{animals}."
  if count == 0
    puts "The animal at #{count} is the #{place} animal and is a #{animals}."
  elsif count == 1
    place = '2nd'
	puts "The animal at #{count} is the #{place} animal and is a #{animals}."
  elsif count == 2
    place = '3rd'
	puts "The animal at #{count} is the #{place} animal and is a #{animals}."
  elsif count == 3
    place = '4th'
	puts "The animal at #{count} is the #{place} animal and is a #{animals}."
  elsif count == 4
    place = '5th'
	puts "The animal at #{count} is the #{place} animal and is a #{animals}."
  elsif count == 5
    place = '6th'
	puts "The animal at #{count} is the #{place} animal and is a #{animals}."
  end
}


  


