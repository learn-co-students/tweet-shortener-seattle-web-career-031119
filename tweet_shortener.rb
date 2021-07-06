require 'pry'

def dictionary
  {
      'hello' => "hi",
      'to' => "2",
      'two' => "2",
      'too' => "2",
      'for' => "4",
      'four' => "4",
      'be' => "b",
      'you' => "u",
      'at' => "@",
      'and' => "&"
  }
end


def word_substituter(tweet)
    new_tweet = []
    
    array = tweet.split
    array.each do |word|
        dictionary.keys.include?(word.downcase) ? new_tweet << dictionary[word.downcase] : new_tweet << word
        #binding.pry
    end
    new_tweet.join(" ")
end


def bulk_tweet_shortener(tweets_array)
    tweets_array.each do |tweet|
        new_tweet = word_substituter(tweet)
        puts new_tweet
    end
end


def selective_tweet_shortener(tweet)
    tweet.length <= 140 ? tweet : word_substituter(tweet)
end


def shortened_tweet_truncator(tweet)
    sub_tweet = selective_tweet_shortener(tweet)
    #binding.pry
    sub_tweet.length > 140 ? sub_tweet[0..139] : sub_tweet
end
