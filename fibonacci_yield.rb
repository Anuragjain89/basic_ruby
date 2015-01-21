# This method will accept maximum number upto which
# the fibonacci sequence will be generated.
# The default value for parameter is set as 1000.
def fibonacci_upto(max=1000)
  if block_given?
    num1, num2 = 1, 1
    while num1 <= max
      num1, num2 = yield num1, num2
    end
  else
    puts 'fibonacci_upto needs to be invoked with a code block containing fibonacci logic.'
  end
end

# The logic for printing and generation of fibonacci sequence has been
# decoupled inside a code block which will be yielded from fibonacci_upto.
fibonacci_upto(1000) do | num1, num2 |
  puts num1
  num1, num2 = num2, num1 + num2
end

