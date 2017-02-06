# Write your code here.

def word_substituter(words)
  short_hand = {
    "hi" => ["hello"],
    "2" => ["to", "too", "two"],
    "4" => ["for", "four", "For"],
    "b" => ["be"],
    "u" => ["you"],
    "@" => ["at"],
    "&" => ["and"]
  }

  words = words.split(" ")
  short_hand.each do |key, value|
    for i in 0...words.size
      words[i] = key if value.include?(words[i])
    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  return word_substituter(tweet) if tweet.length > 139
  tweet
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet)
  return tweet[0...140] if tweet.length > 140
  tweet
end
