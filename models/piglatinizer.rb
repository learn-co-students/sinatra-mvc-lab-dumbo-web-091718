
class PigLatinizer

def piglatinize(string)

end
def piglatinize(sent)
words = sent.split(' ')

words.map! {|word| piglatinize_word(word)}

words.join(' ')
end


def piglatinize_word(str)
chs = str.split('') #split the string in char

if vowels.include?(chs.first.downcase)
  return (str + "way")
else
  initial_consonants = []
  chs.each_with_index do |ch, idx|
    if !vowels.include?(ch.downcase) # consonant  "worldmusic"  ['w']
      consonant = ch
      initial_consonants << consonant
    else # vowel
      return str[idx..-1] + initial_consonants.join('') + "ay"  # "this"[2..-1] + ['t','h'].join('') + "ay"
                                                                # "is" + "th" + "ay" # => "isthay"
    end
  end
end
end

def vowels # a metod to store my vowels
%w[a e i o u]
end

#[1] pry(main)> "asdf"[1..3]
#=> "sdf"
#[2] pry(main)> "asdf"[1..2]
#=> "sd"
#[3] pry(main)> "asdf"[1..-1]
#=> "sdf"

end
