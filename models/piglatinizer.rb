class PigLatinizer
  def piglatinize(string)
    if string.split.size == 1
      if string[0].downcase.start_with?('a', 'e', 'i', 'o', 'u')
        @string = string + "way"
      elsif string[0..1].start_with?('pl', 'th', 'pr')
        @string = string[2..-1] + string[0..1] + "ay"
      elsif string[0..2].start_with?('spr')
        @string = string[3..-1] + string[0..2] + "ay"
      else
        @string = string[1..-1] + string[0] + "ay"
      end
    else
      @string = string.split
      @string = @string.map do |word|
        if word[0].downcase.start_with?('a', 'e', 'i', 'o', 'u')
          word = word + "way"
        elsif word[0..1].start_with?('pl', 'th', 'pr', 'wh', 'sk')
          word = word[2..-1] + word[0..1] + "ay"
        elsif word[0..2].downcase.start_with?('str')
          word = word[3..-1] + word[0..2] + "ay"
        else
          word = word[1..-1] + word[0] + "ay"
        end
      end
      @string = @string.join(' ')
    end
    @string
  end

end
