# Side Practice & Exercise 4: Variables and Names

#style guide side practice
concat = "Concatenation: "
inter = "Interpolation: "
answer = 5 + 3

puts "This is an example of " + inter + ". What is 5 + 3? " + answer.to_s
puts "This is an example of #{concat}. What is 3 + 5? #{3+5}\n\n"

# Ex 4

# Assigning values to variables
cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

# Printing sentences with variables
puts "There are #{ cars } cars available."
puts "There are only #{ drivers } drivers available."
puts "There will be #{ cars_not_driven } empty cars today."
puts "We can transport #{ carpool_capacity } people today."
puts "We have #{ passengers } passengers to carpool today."
puts "We need to put about #{ average_passengers_per_car } in each car."

# Extra Credit
# You forgot to create or misspelled 'car_pool_capacity' therefore ruby threw an error
# 1. 4.0 was used as a double because if you divide by an int it would leave out the decimal
# 2. Floating point means if the value is to big it can be displayed as 10.98^20
# 3. no
# 4. done
# 5. done
# 6. done

i = 5
x = 34
j = 4.8
answer = x / i * j

puts "\n\nWhat is 34 / 5 * 4.8? #{ answer } "