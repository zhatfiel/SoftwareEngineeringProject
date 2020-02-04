# Strings and Regular Expressions

# Part I
def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

# Part II
def starts_with_consonant? s
  # YOUR CODE HERE
  s[0] =~ (/[^aeiouAEIOU#]/)
end

# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  elsif s[0..-1] =~ (/[^01]/)
    return false
  elsif s.b.to_i % 4 == 0
    return true
  else
    return false
  end
end
