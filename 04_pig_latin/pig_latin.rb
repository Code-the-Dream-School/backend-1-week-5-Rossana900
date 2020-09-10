
require 'pry'
require 'pry-byebug'

def translate(words)
    words.split(" ").map {|word| translate_word(word)}.join(" ")
end

def translate_word(word)
    first_letter = word[0].downcase
    
    if ["a", "e", "i", "o", "u"].include?(first_letter)
        "#{word}ay"
    else
        consonants = []
        consonants << word[0]
          if !["a", "e", "i", "o", "u"].include?(word[1]) ||  (word[1] == 'u' && word[0] == "q")
            consonants << word[1]
            if !["a", "e", "i", "o", "u"].include?(word[2]) || (word[2] == 'u' && word[1] == "q")
              consonants << word[2]
            end
          end
        "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
end