require 'pry'

class String
  
  def last_character
    self.split("").last
  end
  
  def sentence?
    self.last_character == "."
  end

  def question?
    self.last_character == "?"
  end

  def exclamation?
    self.last_character == "!"
  end

  def count_sentences
    counter = 0
    words = self.split(" ")
    
    words.each do |word|
      if word.include?(".") || word.include?("?") || word.include?("!")
        counter += 1
      end
    end
    counter
  end
end