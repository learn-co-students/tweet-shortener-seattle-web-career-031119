# Write your code here.
def dictionary 
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => "u",
    "at" => "@",
    "and" => '&'
  }
end


def word_substituter(string)
  words = string.split(" ");
  words.map {|word| 
    if dictionary.keys.include?(word)
      word = dictionary[word]
    elsif dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    end
    word
  }.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet)
  tweet.slice(0, 140)
end

