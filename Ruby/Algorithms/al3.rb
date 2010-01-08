# Author : Genlinux
# This file contains the Ruby code from 
# "Data Structures and Algorithms
# with Object-Oriented Design Patterns in Ruby"
# A Simple input output program
#Basic mathematical formula (n-1)! = n!/n
puts "Please type the number"
n=gets
def factorial(n)
  return  n.eql?(0) ?  1 : n * factorial(n-1)
end
puts factorial(n)
