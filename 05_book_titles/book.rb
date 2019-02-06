class Book
  attr_accessor :title

  def title
    titleize
  end

  private

  def titleize
    @title.capitalize!
    @title.split.map! do |word| 
      small_words.include?(word) ? word : word.capitalize
    end.join(" ")
  end

  def small_words
    ["and", "the", "a", "an", "in", "of"]
  end
end
