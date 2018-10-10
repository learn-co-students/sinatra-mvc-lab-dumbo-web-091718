 class PigLatinizer
   attr_accessor :user_input

   def intialize
     @user_input = user_input
   end

  def maker(word)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    if vowels.include?(word[0])
      word + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
    else
      word
    end
  end

  def pig_latin_maker
    word_arr = @user_input.split(" ")
    if word_arr.count > 1
      new_arr = []
      word_arr.each do |word|
        new_arr << maker(word)
      end
      return new_arr.join(" ")
    else
      return maker(@user_input)
    end
  end

end
