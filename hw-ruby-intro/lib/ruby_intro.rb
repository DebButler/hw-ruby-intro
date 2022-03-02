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
  # This is initialized to -1 for error checking
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
      # If current element is greater than or equal to first variable
      # then update both first and second variables
      if arr[index] >= first
        second = first
        first = arr[index]
 
      # If the current element is in between first and second variables then update second variable
      elsif arr[index] > second && arr[index] != first
       second = arr[index]
      end
    index = index + 1
    end

    # Compute the sum
    sum = first + second
  end
  return sum
end

def sum_to_n? (arr, n)
  # Initialize variables
  matchFound = false
  index = 0

  # Looks for a match in the array
  while matchFound == false && index < (arr.length - 1)
    if (arr[index] + arr[index + 1]) == n
      matchFound = true
    end
  index = index + 1
  end

  return matchFound
end

# Part 2

def hello(name)
  # This string holds the string "Hello, "
  helloWithComma = "Hello, "

  # This returns the concatenation of "Hello, " and a name
  return helloWithComma + name
end

def starts_with_consonant? (s)
  # Initialize boolean
  startsWithConsonant = true

  # This block checks if the first letter is a consonant
  # If the string is empty, return false
  if s.empty?
    startsWithConsonant = false
  # If the first character in the string is not a letter, return false
  elsif !s.slice(0).match?(/[[:alpha:]]/)
    startsWithConsonant = false
  # If the first letter, when converted to uppercase, is a vowel, return false
  elsif s.slice(0).upcase.start_with? 'A', 'E', 'I', 'O', 'U'
    startsWithConsonant = false
  # Otherwise, the first letter is a consonant; so return true
  else
    startsWithConsonant = true
  end

  # Returns the result of the if statements
  return startsWithConsonant
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end