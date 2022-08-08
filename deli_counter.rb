require 'pry'

def line(customer_array)
    modified_customer_array = ["The line is currently:"]
    if customer_array.length == 0
    puts "The line is currently empty." 
     else 
     customer_array.each_with_index do |customer, index|
       place_in_line = index + 1
         new_customer =  "#{place_in_line}. #{customer}"
           modified_customer_array << new_customer
     end
     puts modified_customer_array.join(" ")
   end
 end

def take_a_number(customer_array, new_customer)
 customer_array.push(new_customer)
 place_in_line = customer_array.length
    puts "Welcome, #{new_customer}. You are number #{place_in_line} in line."
end

def now_serving(customer_array)
if customer_array.length == 0
    puts "There is nobody waiting to be served!"
else
    puts "Currently serving #{customer_array[0]}."
    customer_array.shift
end
end

 