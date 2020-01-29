# Lab 1
# Part I
def sum arr
  # YOUR CODE HERE
  arr.sum
end

# Part II
def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    arr.sort!
    arr[-1] + arr[arr.length-2]
  end
end

# Part III
def sum_to_n? arr, n
  # YOUR CODE HERE
end