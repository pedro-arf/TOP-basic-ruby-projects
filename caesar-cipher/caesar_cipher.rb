module CaesarCipher
  def self.encrypt(string, shift)
    alphabet = /^[A-Za-z]+$/

    string.chars.map do |char|
      ascii_code = char.ord

      if char.match?(alphabet)
        start = ascii_code < 91 ? 65 : 97
        (((ascii_code - start) + shift) % 26 + start).chr
      else
        char
      end
    end.join
  end
end
