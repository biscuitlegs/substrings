def substrings(string, dictionary)
    
    result = {}

    string.split(" ").each do |slice|
        dictionary.each do |word|
            if slice.downcase.include?(word)
                result[word] ? result[word] += 1 : result[word] = 1
            end
        end
    end

    result.sort.to_h
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)