# Accept an input string and fetch the alphabets out of it.
# For each occurence of any given character, increment the 
# value for that character key in hash by 1.

print "Please enter a string : "
input_alpha_array = gets.scan(/[a-zA-Z]/)

alpha_occurence_hash = Hash.new(0)
input_alpha_array.each { |character| alpha_occurence_hash[character] += 1 }

# Optionally, output the occurence hash
puts alpha_occurence_hash
