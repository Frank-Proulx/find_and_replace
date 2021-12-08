class Search
  def initialize(text)
    @text = text
  end
  
  def find_and_replace(search_word, replace_word)
    word_array = @text.split(' ')
    counter = 0
    word_array.each do |word|
      if word == search_word
        word_array[counter] = replace_word
      end
      counter += 1
    end
    word_array.join(' ')
  end
end