def caesar_cipher(word, num_shift)
  letters = word.split("")
  letters_after_shift = letters.map do |letter|
    if letter.ord < 65 || letter.ord.between?(90, 96) || letter.ord > 122
      letter
    else
      ascii_letter = letter.ord
      if ascii_letter < 90
        cipher_ascii_letter = (((ascii_letter - 65) + num_shift) % 26) + 65
      else
        cipher_ascii_letter = (((ascii_letter - 97) + num_shift) % 26) + 97
      end 
      cipher_letter = cipher_ascii_letter.chr
      cipher_letter
    end
  end
  letters_after_shift.join
end

caesar_cipher("What a string!", 5)
