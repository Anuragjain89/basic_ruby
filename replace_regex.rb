# This program asks user to enter text and replaces
# all the vowels with '*' using regular expressions.

print 'Please enter some text : '
input_text = gets

vowel_regex = /[aeiou]/i
replacement_string = '*'

puts input_text.gsub(vowel_regex, replacement_string)

