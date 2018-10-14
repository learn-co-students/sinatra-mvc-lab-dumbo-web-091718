require 'pry'
class PigLatinizer

  def piglatinize(input)
    # pig-latinizes for more than one word
    # for piglatinizer of individual words, see scramble
    # binding.pry
    input.split.collect{ |word| scramble(word) }.join(" ")
  end

  def scramble(word)
    # takes in one word, pig-latinizes it
    # =>  #head is an array of chars before the first vowel of word
    # =>  if first char of word == vowel, head = []

    head = head(word)
    if head == []
      return word + "way"
    else
      return tail(word) + head.join + "ay"
    end
  end

  def head(word)
    # head should be composed of only constatants
    # otherwise head = []
    chars = word.split("")
    head = []
    chars.each do |char|
      if !is_vowel?(char)
        head << char
      else
        return head
      end
    end
  end

  def tail(word)
    tail = word[(head(word).count)..-1]
  end

  def is_vowel?(char)
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    if vowels.include?(char)
      return true
    else
      return false
    end
  end


end
