# require 'pry'

class String

  def sentence?
    if self.end_with?('.')
      true
    else
      false
    end
  end

  def question?
    if self.end_with?('?')
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?('!')
      true
    else
      false
    end
  end

  def count_sentences
    # binding.pry

      sentence_array = self.split(/[\.?!] /)

      sentence_array = sentence_array.map do |word| 
          if word.end_with?('?')
            word = word.delete_suffix("?")
          elsif word.end_with?('!')
            word = word.delete_suffix("!")
          elsif word.end_with?("??")
            word = word.delete_suffix("??")
          elsif word.end_with?("!!")
            word = word.delete_suffix("!!")
          elsif word.end_with?("...")
            word = word.delete_suffix("...")
          elsif word.end_with?("..")
            word = word.delete_suffix("..")
          elsif word.end_with?(".")
            word = word.delete_suffix(".")
          else 
            word
          end
      end
    
      if sentence_array.length == 0
        0
      else
        sentence_array.length
      end

    # binding.pry
  end


end


# "One. Two. Three... Four!! Five?? Six? Seven!".count_sentences

# binding.pry
