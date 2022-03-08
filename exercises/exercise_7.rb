require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"
 


# Your code goes here ...
puts "provide store name"
print ">"
name_of_store = gets.chomp
new_store = Store.create({name: name_of_store})

new_store.errors.messages.each do |error|
  puts "#{error}"
end