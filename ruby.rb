dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","below"]

def substrings(word, array)
  temp_hash = Hash.new(0)

  #split string into multiple words?
  word.downcase!
  print word;
  
  word.scan(/\w+/) do |word|
    if array.include?(word)
      temp_hash[word] += 1
    end
    print temp_hash
  end

=begin
  #iterate through the dictionary array and compare it to the temp array to see if theres a match
  array.each do |val|
    temp_array.each do |temp_array_val|
     if temp_array_val == val
       temp_hash[val] += 1
     end
   end
   print temp_hash
  end
=end
end

#make this word with multiple words?
substrings("Howdy partner, sit down! How's it going?", dictionary)

# exmaple output
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
# => { "below" => 1, "low" => 1 }
