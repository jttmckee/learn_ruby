class Book
  def titleize words
    wordsArray = words.split(" ")
    littleWords = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or",  "nor", "over"]
    wordsArray.each_index do |i|
      if (not (littleWords.include?(wordsArray[i]))) or i == 0 then wordsArray[i].capitalize! end
    end

    return wordsArray.join(" ")

  end

  def title
    @title
  end

  def title= title
    @title = titleize(title)

  end
end
