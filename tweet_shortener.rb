require 'pry'

def dictionary
  subsitutions ={ "hello" => 'hi',
                  "to"    => '2',
                  "two"   => '2',
                  "too"   => '2',
                  "for"   => '4',
                  "four"  => '4',
                  "be"    => 'b',
                  "you"   => 'u',
                  "at"    => '@',
                  "and"   => '&'
                }
end

def word_substituter(tweet)
  tweet_a = tweet.split

  tweet_a.each do |word|
    dictionary.keys.each do |original|
      if word.downcase == original
        word.replace "#{dictionary[original]}"
      end
    end
  end

  tweet_a.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  if shortened_tweet.length > 140
    shortened_tweet= shortened_tweet[0..136] << "..."
  else
    shortened_tweet
  end
end
