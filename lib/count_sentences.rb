require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    prev = ""
    sum = 0
    self.each_byte do |b|
      c = b.chr
      if c == '.' or c == '?' or c == '!'
        if prev.size > 0
          sum += 1
        end
        prev = ""
      else
        prev += c
      end
    end
    return sum
  end

end