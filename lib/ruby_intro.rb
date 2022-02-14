# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end


def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    arr.pop
  else
    arr.sort!
    a = arr.pop
    b = arr.pop
    a+b
  end
end

puts "#{max_2_sum [2,5,6,1]}"
def sum_to_n? arr, n
  # YOUR CODE HERE

  value = Hash.new
  for i in arr
    if value.has_key? (n-i) then
      return true
    end
    value[i]=1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s =~ /^[a-zA-Z].*$/) and ( s =~ /^[^aeiouAEIOU].*$/ ) then
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[01]*00$/ 
    return true
  elsif s =~ /^0+$/ then
    return true
  else
  return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? or price <= 0 then
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price=price
  end
  
  def price
    @price
  end
  
  def price_as_string
    "$%.02f" % @price
  end
end
