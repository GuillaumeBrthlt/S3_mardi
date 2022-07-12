def ceasar_sypher(coded_phrase, ceasar_key)
  if ceasar_key.is_a?(Integer) && (0..26).include?(ceasar_key)
    uncode_phrase = []
    coded_phrase.split(//).map.each do |letter|
      letter = letter.ord
      if (65..90).include?(letter) 
        letter + ceasar_key > 90 ? uncode_phrase.push((letter + ceasar_key - 26).chr) : uncode_phrase.push((letter + ceasar_key).chr)
      elsif (97..122).include?(letter)
        letter + ceasar_key > 122 ? uncode_phrase.push((letter + ceasar_key - 26).chr) : uncode_phrase.push((letter + ceasar_key).chr)
      else
        uncode_phrase.push(letter.chr)
      end
    end
    uncode_phrase.join
  else
    'the key MUST be a number between 0 and 26'
  end
end
