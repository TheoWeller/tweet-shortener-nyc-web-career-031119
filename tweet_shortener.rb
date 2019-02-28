require 'pry'

tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def dictionary
  {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
subDict = dictionary.keys
words = string.split(" ")
string.each_with_index do |word,index|
  if subDict.include?(word)
    string[index] = myDict[word]
  end
  end
  string.join(" ")
end

#binding.pry
