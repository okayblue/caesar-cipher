def caesar_cipher(string, shift_factor)
  # create arrays for uppercase and lowercase letters
  capital_letters = ('A'..'Z').to_a
  lowercase_letters = ('a'..'z').to_a
  # Split the string to work with the letters individually
  split_string = string.split("")  

end

# for testing - this should return "Bmfy f xywnsl!"
caesar_cipher("What a string!", 5)