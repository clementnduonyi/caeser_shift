#caeser_cipher.rb
require "./lib/caeser_cipher.rb"

describe CaeserCipher do
    subject {CaeserCipher.new}

    describe "#caeser" do
        it " is efficient for encryption of words of any chararcter length with short shifts" do
            expect(subject.caeser("okon", 3)).to eql('rnrq')
        end

        it "is efficient for encryption of words of any chararcter length with long shifts" do
            expect(subject.caeser("okon", 100)).to eql("kgkj")
        end

        it "is efficient for encryption of strings of any length with short shifts and special characters" do
            expect(subject.caeser("i'm encrypted!", 3)).to eql("l'p hqfubswhg!")
        end

        it "is efficient for enryption of strings of any length with long shifts and special characters" do
            expect(subject.caeser("i'm encrypted!", 100)).to eql("e'i ajynulpaz!")
        end

        it "is efficient for encryption with long negative shifts" do
            expect(subject.caeser("i'm encrypted", -95)).to eql("r'v nwlahycnm")
        end

        it "is efficient for encryption with short negaitive shifts" do
            expect(subject.caeser("i'm encrypted", -4)).to eql("e'i ajynulpaz")
        end

        it "is not efficient for decryption" do
            expect(subject.caeser("e'i ajynelpaz", -4)).not_to eql("i'm encrypted")
        end
    end
        
end
