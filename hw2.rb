#Name: Jennie Hall CS270 Assignment 2
#Description: 5 seperate ruby programs
#Input: Name(String), Num(Integer)
#Output: Greeting, or Sum of numbers


#basics program: prompt user to input name, output greeting

print "Please enter your name: "
name = gets.chomp
puts "Hello #{name}!"

#selection program: prompts user to enter number, output even or odd

print "Please enter a number: "
num = gets.chomp.to_i
if num % 2 == 0
	puts "#{num} is an even number"
else puts "#{num} is an odd number"
end


#repetition program: repeat above program add q to quit
n = ' '

while n !='q'
print "enter a number: "
num = gets.chomp.to_i

if num % 2 ==0
	puts "#{num} is even"
else 
	puts "#{num} is odd" 

end

print "enter q to quit or enter to continue: "
n = gets.chomp
end


#arrays program: ask user for number, create array of numbers, add sum

add = Array.new
print "Enter a number: "
num = gets.chomp.to_i

for i in 1...num
add << i
sum = num += i
end

puts "sum of numbers  is #{sum}"


# array program 2: prompt user age, create hash with keys, iterate

person = Hash.new()

print "enter your name: "
n = gets.chomp

print "enter your age: "
a = gets.chomp.to_i

person[n] = a

person.each do |key, value |
puts "Hello #{key}, you are #{value} years old"

end


#functions program: use program 4, sum calculation inside function, returns sum of items

a = Array.new
print "Enter a number: "
num = gets.chomp.to_i

for i in 1...num
a << i
end

def add (a)
  array.each do |num, i|
  sum = num += i
  return sum
end
end

puts "#{sum}"
