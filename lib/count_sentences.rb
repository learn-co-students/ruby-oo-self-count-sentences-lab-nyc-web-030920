require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true 
    else 
      return false
    end 
  end

  def question?
    if self.end_with?("?")
      return true 
    else 
      return false
    end 
  end

  def exclamation?
    if self.end_with?("!")
      return true 
    else 
      return false
    end 
  end

  def count_sentences
    delimiters = ["?", ".", "!"]
    self.split(Regexp.union(delimiters)).delete_if { |w| w.length < 2}.count 
  
end

end 