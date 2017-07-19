#write your code here
def translate words
  vowels = "aeiou".split("")
  #if "a" == word[-1] then returnWord = word + "y" else returnWord = word + "ay" end
  #if vowels.include?(word[0]) then return returnWord else return "a" + returnWord end
  wordsArray = []
  i = 0
  words.split(" ").each do |word|
    ctr = 0
    if not (vowels.include?(word[0]))
      while not (vowels.include?(word[ctr])) or ctr > word.length
        ctr = ctr + 1
        if word[ctr - 1] == 'q' and word[ctr] == 'u' then ctr = ctr + 1 end
      end
      start = word[0...ctr]
      rest = word[(ctr)...word.length]
      word = rest + start
    end
      wordsArray[i] = word + "ay"
      i = i + 1
  end
  return wordsArray.join(" ")
end
