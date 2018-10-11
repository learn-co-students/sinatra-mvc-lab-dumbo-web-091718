class PigLatinizer 
  def transform(word)
    
    # Note: Regexp#match? is a better choice here but I'm running Ruby 2.3 so I can't use it.
    if word[0] =~ /[aeiou]/i
      return word + 'way'
    end
    
    # Remove every character prior to the first vowel in the word 
    index = word.index(/[aeiou]/)
    placeholder = word.slice(0, index)
    new_word = word.split('').drop(index)
    new_word.join + placeholder + 'ay'
  end

  def piglatinize(word)
    # https://coderwall.com/p/qfh2ua/ruby-tricks-to-make-your-code-more-fun-and-less-readable
    word.split(' ').map(&method(:transform)).join(' ')
  end
end