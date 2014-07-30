# Exercise 18: Names, Variables, Code Functions

# this one is like your scripts with argv
def puts_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok, that *arges is acutally pointless, we can just do this
def puts_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes one argument
def puts_one(arg1)
  puts "arg1: #{arg1}"
end

# this takes no arguments
def puts_none()
  puts "I got nothin'."
end

puts_two("Andrew", "Camero")
puts_two_again("Andrew", "Camero")
puts_one("First!")
puts_none()