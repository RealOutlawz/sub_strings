dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","below"]

def substrings(str, array)
  temp_hash = Hash.new(0)

  # turn the word lowercase to be case insensitive 
  lowercased_str = str.downcase
  
  # removing the punctuation
  no_punctuation = lowercased_str.gsub(/[^a-z0-9\s]/, "")
  
  # splitting word into an array
  split_words = no_punctuation.split

  # Iterate over the given array and for each value count the amount of times a word appears from the split_words array appears
  array.each do |val|
    split_words.each do |word|
     if word == val
       temp_hash[val] += 1
     end
    end
  end

  #print the hash with the counts
  puts temp_hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

# exmaple output
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
# => { "below" => 1, "low" => 1 }
