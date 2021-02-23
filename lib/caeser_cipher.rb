class CaeserCipher
    def caeser(str, num)
        encryption = ""
        #str = gets.chomp
        
        str.each_char do |letter|
            initial = letter.ord < 91 ? 65 : 97 
            if letter.ord.between?(65, 90 ) || letter.ord.between?(97, 122)
                shifting = (((letter.ord - initial) + num) % 26) + initial
                encryption += shifting.chr
            else
                encryption += letter
            end
            
        end
        encryption
    end
    #puts caeser("i'm encrypted", -4)

end





    


