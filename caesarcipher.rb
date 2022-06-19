def caesar_cipher(string, shift_factor)
  # create arrays for uppercase and lowercase letters
  capital_letters = ('A'..'Z').to_a
  lowercase_letters = ('a'..'z').to_a
  # split the string to work with the letters individually
  split_string = string.split("")
  
  shift = split_string.map do |char|
    # find the index of the current char in letters array and add the shift_factor
    if capital_letters.include?(char)
      char = capital_letters[capital_letters.find_index(char) + shift_factor]
    elsif lowercase_letters.include?(char)
      char = lowercase_letters[lowercase_letters.find_index(char) + shift_factor]
    else
      # don't change if it isn't a letter
      char
    end
  end

  shift.join
end

# for testing - this should return "Bmfy f xywnsl!"
p caesar_cipher("What a string!", 5)