def dictionary()
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "Hello" => "hi",
    "To" => "2",
    "Two" => "2",
    "Too" => "2",
    "For" => "4",
    "Four" => "4",
    "Be" => "b",
    "You" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  convert_to_array = []
  convert_to_array = string.split
  keys = []
  keys = dictionary.keys
  shortened_string = ''

  convert_to_array.each do |word|
    keys.each do |key|
      if word == key
        word.replace("#{dictionary[key]}")
      end
    end
  end

  shortened_string = convert_to_array.join(' ')
  shortened_string

end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  else
  word_substituter(tweet)
  end

end

def shortened_tweet_truncator(tweet)
  new_tweet = ''
  if tweet.length <= 140
    tweet
  else
  new_tweet= word_substituter(tweet)
  if new_tweet.length> 140
    new_tweet[0...140]
  else
    new_tweet
  end
end
end
