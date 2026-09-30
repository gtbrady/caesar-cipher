def caesar_cipher(string, shift)
  input = string.chars
  result = input.map do |char|
    (char.ord + shift).chr
  end
  result
end


p caesar_cipher("What a string!", 5)
# expected output:
# "Bmfy f xywnsl!"
# 
# A - Z = 65 - 90
# a - z = 97 - 122