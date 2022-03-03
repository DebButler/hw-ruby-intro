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

def binary_multiple_of_4? (s)
  # Initialize variables
  isMultipleOfFour = false

  # This checks if the string is a binary
  checkForBinary = s.count('0') + s.count('1')
  # This triggers if the number of 0s and 1s is equal to the string's size
  if s.size == checkForBinary
    # This checks if the string is empty
    if s.empty?
      isMultipleOfFour = false
    # A binary number is a multiple of four if it ends in two zeroes
    elsif s.end_with?("00")
      isMultipleOfFour = true
    # This will check if the binary number is zero
    # Zero is considered a multiple of four
    elsif s == "0"
      isMultipleOfFour = true
    # If it is anything else, it is not a binary number that is a multiple of four
    else
      isMultipleOfFour = false
    end
  # If the numbers are not equal, then we know it can't be a binary number
  else
    isMultipleOfFour = false
  end

  return isMultipleOfFour
end

# Part 3

class BookInStock
  # This allows the program to read and write to the attributes
  attr_accessor :isbn, :price

  # This initializes a new book object
  def initialize(isbn, price)
    # This checks if the ISBN string is empty
    if isbn.empty?
      raise ArgumentError.new("You need to enter an ISBN number!")
    end

    # This checks if the price is less than or equal to zero
    if price <= 0
      raise ArgumentError.new("You need to enter a valid price!")
    end

    # This sets the object's isbn and price
    @isbn = isbn
    @price = price
  end
  
  # This returns the price with two decimal places
  def price_as_string
    return "$" + format('%.2f', price)
  end
end