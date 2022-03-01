# When done, submit this entire file to the autograder.

# Part 1

def sum (arr)
  # Add elements in the array
  sum = 0
  for num in arr
    sum = sum + num
  end
  
  return sum
end

def max_2_sum (arr)
  # Initialize variables
  firstLargest = 0
  seconfLargest = 0
  sum = -1

  # Checks if the array is empty
  if arr.length == 0
    sum = 0
  elsif arr.length == 1
    sum = arr[0]
  else
    # Sets the starting values
    if arr[0] > arr[1]
      first = arr[0]
      second = arr[1];
    else
      first = arr[1]
      second = arr[0]
    end
 
    # We will traverse the rest of the array to find the largest two elements
    index = 2
    while index < arr.length
      # If current element is greater than first then update both first and second
      if arr[index] > first
        second = first
        first = arr[index]
 
      # If arr[i] is in between first and second then update second
      elsif arr[index] > second && arr[index] != first
       second = arr[index]
      end
    index = index + 1
    end

    sum = first + second
  end
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

# Call functions in part 1
intArray = [1, 2, 3]
emptyArray = []
arrayOfOne = [1]

puts "Part 1"
puts "\nsum method"
puts sum (intArray)
puts sum (emptyArray)

puts "\nmax_2_sum method"
puts max_2_sum (intArray)
puts max_2_sum (emptyArray)
puts max_2_sum (arrayOfOne)
