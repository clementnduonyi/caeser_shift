class CaeserCipher
    def caeser(str, num)

        encription = ""

=begin
        puts "Enter words or sentences to encript"
        str = gets.chomp
=end
        str.each_char do |letter|
            initial = letter.ord < 91 ? 65 : 97 
            if letter.ord.between?(65, 90 ) || letter.ord.between?(97, 122)
                shifting = (((letter.ord - initial) + num) % 26) + initial
                encription += shifting.chr
            else
                encription += letter
            end
            
        end
        encription
    end
    #puts caeser("", -4)

end





    


