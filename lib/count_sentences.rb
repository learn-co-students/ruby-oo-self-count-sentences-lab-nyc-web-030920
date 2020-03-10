

class String

  def sentence?
    return self[self.length - 1] == '.'
    
  end

  def question?
    return self[self.length - 1] == '?'
  end

  def exclamation?
    return self[self.length - 1] == '!'

  end

  def count_sentences
    arr = self.split(/\.|\!|\?/)
    arr.each do |e|
      if e.size < 2
        arr.delete(e)
      end
    end
  
  arr.size
  
  end
end