#write your code here
def echo words
  return words
end

def shout words
  return words.upcase
end

def repeat words, numTimes = 2
  #return (words + " ")*(numTimes - 1) + words
  #Above works, so does below.  Not sure which is more elegant?
  return ((words + " ") * numTimes).chop
end

def start_of_word word, numLetters = 1
  return word[0...numLetters]
end

def first_word words
  return words.split(" ")[0]
end

def titleize words
  wordsArray = words.split(" ")
  littleWords = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or",  "nor", "over"]
  wordsArray.each_index do |i|
    if not (littleWords.include?(wordsArray[i])) or i == 0 then  wordsArray[i].capitalize end
  end
  return wordsArray.join(" ")
end
