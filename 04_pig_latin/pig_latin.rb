def translate(words)
  words_array = words.split(" ")

   translated_array = words_array.map do |array_word|
    if first_letter_is_a_vowel(array_word[0])
      make_ay(array_word)
    elsif asldkjkljlkjlk(array_word)
      array_word.delete(array_word[0..2]) + make_ay(array_word[0..2])
    elsif "qu".match(array_word[0..1]) && !vowels.match(array_word[0]) || (!vowels.match(array_word[0]) && !vowels.match(array_word[1]))
      array_word.delete(array_word[0..1]) + make_ay(array_word[0..1])
    elsif !vowels.match(array_word[0])
      array_word.delete(array_word[0]) + make_ay(array_word[0])
    end
  end
  translated_array.join(" ")
end

private

def vowels
  /[aeiou]/
end

def vowel(letter)
  vowels.match(letter)
end

def make_ay(word)
  "#{word}ay"
end

def first_letter_is_a_vowel(letter)
  vowel(letter)
end

def asldkjkljlkjlk(word)
  ("qu".match(word[1..2]) && !vowels.match(word[0])) || (!vowels.match(word[0]) && !vowels.match(word[1]) && !vowels.match(word[2]))
end