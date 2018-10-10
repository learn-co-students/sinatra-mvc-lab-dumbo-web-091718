require 'pry'

class PigLatinizer

  @@vowels = ['a', 'e', 'i', 'o', 'u']
  @@alphabet = ('a'...'z').to_a
  @@consonants = @@alphabet - @@vowels

  def piglatinize(phrase)
    array_of_words = phrase.split

    array_of_words.map do |word|
      array = word.split('')
      if @@vowels.include?(word.downcase[0])
        pig_latin_word = word + 'way'
      elsif @@consonants.include?(word.downcase[0]) && @@vowels.include?(word.downcase[1])
        word[1..-1] + word[0] + 'ay'
      elsif @@consonants.include?(word.downcase[0]) && @@vowels.include?(word.downcase[2])
        word[2..-1] + word[0..1] + 'ay'
      else
        word[3..-1] + word[0..2] + 'ay'
      end
    end.join(" ")
  end

end
