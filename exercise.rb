class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    str.gsub(/\b[a-zA-Z]{5,}\b/) do |word|
      if word[0] =~ /[A-Z]/
        "Marklar#{word[-1] =~ /[[:punct:]]/ ? word[-1] : ''}"
      else
        "marklar#{word[-1] =~ /[[:punct:]]/ ? word[-1] : ''}"
      end
    end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    a, b = 1, 1
    sum = 0
    (nth - 2).times do
      a, b = b, a + b
      sum += b if b.even?
    end
    sum
  end

end
