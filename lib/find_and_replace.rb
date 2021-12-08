class Search
  def initialize(text)
    @text = text
  end

  def text=(text)
    @text = text
  end
  
  def find_and_replace(search_word, replace_word)
    word_array = @text.split(' ')
    counter = 0
    word_array.each do |word|
      split_word = word.split('')
      punctuation = split_word.select{|x| x.match(/[^a-z]/i)}
      punctuation.join('')
      split_word.delete_if{|x| x.match(/[^a-z]/i)}
      clean_word = split_word.join('')
      if clean_word == search_word
        word_array[counter] = replace_word.split('').push(punctuation).join('')
      end
      if clean_word == search_word.capitalize()
        word_array[counter] = replace_word.capitalize().split('').push(punctuation).join('')
      end
      counter += 1
    end
    word_array.join(' ')
  end
end