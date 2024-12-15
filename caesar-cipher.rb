def caesar_cipher(word, num_shift)
  letters = word.split("")
  letters_after_shift = letters.map do |letter|
    if (letter.ord < 65) || (letter.ord > 90 && letter.ord < 97) || (letter.ord > 122)
      letter
    else
      ascii_letter = letter.ord
      if ascii_letter < 90
        cipher_ascii_letter = ascii_letter + num_shift
        if cipher_ascii_letter > 90
          cipher_ascii_letter -= 26
        end
      else
        cipher_ascii_letter = ascii_letter + num_shift
        if cipher_ascii_letter > 122
          cipher_ascii_letter -= 26
        end
      end 
      cipher_letter = cipher_ascii_letter.chr
      cipher_letter
    end
  end
  letters_after_shift.join
end

caesar_cipher("What a string!", 5)
