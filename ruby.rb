dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","below"]


def substrings(word, array)
  temp_hash = Hash.new(0)

  array.each do |val|
    if val == word
      temp_hash[val] += 1
    end
  end

  print temp_hash[word]

end


substrings("below", dictionary)
