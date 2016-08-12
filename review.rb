#datatypes
#integers/fixnum, strings, floats, bouleans
#integers are normal whole numbers 1, 4, 6,
#strings are "hello" writing
#floats are decimals like 5.6, 7.8382
#bouleans are true or false

puts "Hello world!"

#variables - storage containers for data/information
name = "White Jesus"
puts "Hello #{name.upcase}!" #interpolation
# or .reverse .capitalize
# you can find a list of options at ruby docs online under strings

gets.chomp #this takes what the user will say next and chomps off the extra return that comes next
#user input
age = gets.chomp
puts "You are #{age} years old."

#adding in coding
#first you might need to change the input to be an float with .to_f
age_2 = gets.chomp.to_f
puts "You will be #{age+5.to_s} years old in 5 years."

#methods

#making an odd or even calculator
def odd_or_even(number)
  if number%2 == 0
  #the % means "modulo" and it tells us what the remainder is
    #therefore for an even number/2 there is no remainder
    puts "#{number} is even."
    else
    puts "#{number} is odd"
  end
end

#then you must call it with a number to replace the "number" variable
odd_or_even(77)

#how to make a word counter
def word_counter(sentence)
  puts "The sentence: #{sentence} has #{sentence.split.length} words."
  #.split splits a string into the words it makes up and puts it in an array (a list)
  #.length checks how many things are in the array
end

word_counter("Bush did 911")

sentence_1 = "Why am I doing this to myself."
sentence_2 = "I mean really I could be at home sleeping right now."

puts word_counter(sentence_1) + word_counter(sentence_2)

#arrays and hashes
#arrays have box brackets [] and hashes have squigly brackets {}
#arrays have index/indices and hashes have keys

#array of colors
colors_array = ["red," "green", "blue", "orange", "magenta", "silver"]
#order matters in arrays

#hash of favorite colors
#order does not matter in hashes
#more descriptive
colors_hash = {
  joseph: "silver", #dont forget to put a comma after each item
  connor: "blue",
  franklin: "red",
  jose: "black",
  kayla: "pink",
  richard: "turqoise",
  james: "tan",
  jonny: "magenta"
  }

puts colors_array[2] #remember in arrays when calling something it starts at 0

#you can add things to an array with .push
colors_array.push("black")
colors_array << "purple"
#these mean the same thing
p colors_array #p shows it as a data type (as an array) rather then just as a list
#.pop takes off the last element and .push adds one to the end
#google the ruby docs for arrays for more commands like .insert you can do

#iteration on an array
#.each goes through every element in the array by assigning it the variable inside the pipes "||"
colors_array.each do |color|
  puts color + "is the best color"
  #this will go through and put for example "silver is the best color" for each color in the array
end

#iteration on a hash, .each goes through every key and uses their corresponding value in the hash
#the pipes need two variables seperated by a comma, one for the key and one for the value
colors_hash.each do |name,color|
  puts "#{name}'s favorite color is #{color}."
end

#whie loop the instructings will run until the condition is false
puts "What number do you want to start up to 10?"
num = gets.chomp.to_i
while num < 10
  puts num
  num = num + 1
  #num += 1 means the same thing
end



