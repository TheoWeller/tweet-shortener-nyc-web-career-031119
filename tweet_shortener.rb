require 'pry'

#tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4"
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  dict = dictionary.keys
  words = tweet.split(" ")
  words.each_with_index do |word,index|
    if dict.include? word
      words[index] = dictionary[word]
    end
  end
words.join(" ")
end

#binding.pry
