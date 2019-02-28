require 'pry'

#tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
#myArray = ["hello", "to", "be", "for"]
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  sub_dict = dictionary.keys
  words = tweet.split(" ")
  words.each_with_index do |word,index|
    if sub_dict.include? word
      words[index] = dictionary[word]
    end
  end
words.join(" ")
end

def bulk_tweet_shortener(tweet)
tweet.each do |tweet|
  puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweets)
  tweets.each do |tweets|
  if (tweets.chars.length > 140)
      puts word_substituter(tweets)
    end
  end
end
