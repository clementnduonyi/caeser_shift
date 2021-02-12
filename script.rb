def caeser_cipher(str, num)
    puts "Enter words or sentences to encript"
    str = gets.chomp

#coverting form string to integer
    ascii = str.chars.map {|letter| letter.ord}
    
    shift_n_places_forward = ascii.map {|letter| letter + num}
    
#converting from integer back to string
    encription = shift_n_places_forward.map {|letter| letter.chr}.join.upcase

    #encription
end
puts caeser_cipher('', 5)
 
#Decription with caeser cipher Technique
def decript(encripted, n)
    puts "Enter the encripted text(s) to decript"
    encripted = gets.chomp
    
    convert_back_to_int = encripted.chars.map{|l| l.ord}
    shift_n_places_backward = convert_back_to_int.map{|l| l - n}

    decription = shift_n_places_backward.map{|l| l.chr}.join.capitalize
end

puts decript('', 5)


