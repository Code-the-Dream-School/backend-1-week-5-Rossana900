class Book
    def title=(title)
      @title = title
    end
  
    def title
      capitalized_words = @title.split(" ").each_with_index.map do |word, index|
        if index == 0
          word.capitalize
        elsif word == 'I'
          word.capitalize
        elsif !['the', 'a', 'an', 'and', 'in', 'of'].include?(word)
          word.capitalize
        else
          word
        end
      end
  
      capitalized_words.join(" ")
    end
  end