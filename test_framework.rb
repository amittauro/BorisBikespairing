def assert_equals(val1, val2)
  val1 == val2
end

def it(description, &block)
  result = block.call # return a boolean (hopefully)
  if result == true
    puts "#{description}: Yeah, Great!"
  else
    puts "#{description}: Try again... :("
  end
end
