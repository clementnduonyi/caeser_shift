def caeser_cipher(str, num)

#coverting form string to integer
    ascii = str.chars.map {|letter| letter.ord}
    
    shifting_letters = ascii.map {|letter| letter + num}
    
#converting from integer back to string
    encription = shifting_letters.map {|letter| letter.chr}.join.upcase
end
p caeser_cipher("clement", 5)
