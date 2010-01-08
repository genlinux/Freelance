# Author : Genlinux
# This file contains the Ruby code from 
# "Data Structures and Algorithms
# with Object-Oriented Design Patterns in Ruby"
# A Simple input output program
puts "Please type the number"
n=gets().to_i
def sum(n)
    result = 0
    i = 1
    while i <= n
        result += i
        i += 1
    end
    return result
end
puts sum(n)
