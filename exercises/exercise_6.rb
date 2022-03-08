require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

 @store1 = Store.find(1)
 @store2 = Store.find(2)
 @store4 = Store.find(4)


@store1.employees.create([{first_name: "Khurram", last_name: "Virani", hourly_rate: 60},
                          {first_name: "Tonny", last_name: "Smith", hourly_rate: 45},
                          {first_name: "Kim", last_name: "Jisang", hourly_rate: 50}])

@store2.employees.create([{first_name: "Tom", last_name: "Cruis", hourly_rate: 100},
                          {first_name: "Cameron", last_name: "Paul", hourly_rate: 30}])

@store4.employees.create({first_name: "Jessica", last_name: "Jones", hourly_rate: 66})
  
  

