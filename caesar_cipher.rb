def caesar_cipher(string, shift)
  upper = Range.new(65,90)
  lower = Range.new(97,122)

  input = string.chars
  result = input.map do |char|
    if upper.cover?(char.ord)
      if upper.cover?(char.ord + shift)
        (char.ord + shift).chr
      else
        (char.ord + shift - 26).chr
      end
    elsif lower.cover?(char.ord)
      if lower.cover?(char.ord + shift)
        (char.ord + shift).chr
      else
        (char.ord + shift - 26).chr
      end
    else
      char
    end
  end
  result.join
end

# expected output:
# "Bmfy f xywnsl!"
# 
# A - Z = 65 - 90
# a - z = 97 - 122
# Determine uppercase or lowercase to determine ASCII Range 
# Determine if shift requires a wrap
puts caesar_cipher("What a string!", 5)
puts caesar_cipher("What a string!", 7)
puts caesar_cipher("What a string!", 52)
puts caesar_cipher("What a string!", -1)


#["\\", "m", "f", "y", " ", "f", " ", "x", "y", "w", "n", "s", "l", "!"]
#["\\", "m", "f", "y", "%", "f", "%", "x", "y", "w", "n", "s", "l", "&"]