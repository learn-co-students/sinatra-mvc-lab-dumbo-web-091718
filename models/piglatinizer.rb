class PigLatinizer
  attr_reader :phrase

  def initialize
  end

  def piglatinize(phrase)
    words = phrase.split(" ")
    new_words = []
    vowels = ["a", "e", "i", "o", "u"]
    words.each do |word|
      if vowels.include?(word[0].downcase)
        new_word = word + "way"
        new_words << new_word
      else
        word_array = word.split('')
        until vowels.include?(word_array[0])
          con = word_array.shift
          word_array.push(con)
        end
        final_word = word_array.join('') + "ay"
        new_words << final_word
      end
    end
    @phrase = new_words.join(" ")
  end
end
