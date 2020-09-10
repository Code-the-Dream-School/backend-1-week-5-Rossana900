#write your code here
def echo(param)
  param
end

def start_of_word(param, n)
  param [0...n]
end

def first_word(param)
  param.split.first
end 

def titleize(words)
  lower_array = ['a', 'and', 'an', 'in', 'the', 'on', 'of', 'over']
  new_title = words.split().map! do |word|
    if !lower_array.include?(word)
      word.capitalize
    else
      word  
    end  
  end
  new_title[0] = new_title[0].capitalize
  words = new_title.join(' ')
end

def shout(param)
  param.upcase
end

def repeat(param, times = 2)
 ((param + " " ) * times).strip
end


