def dictionary
  dict = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(tweet)
  words = tweet.split(" ")
  words.collect do |words|
    dictionary.collect do |key, value|
      if words == key
      words.replace(value)
    end 
  end
 end  
 words.join(" ")
 end
 
 def bulk_tweet_shortener(tweet_array)
   tweet_array.collect do |tweet|
     puts word_substituter(tweet)
   end
 end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet 
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140
    tweet[0...140]
  else 
    word_substituter(tweet)
end
end