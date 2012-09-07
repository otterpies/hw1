def combine_anagrams(words)
  groups = Hash.new { |hash, key| hash[key] = [] }
  words.each do |word|
    groups[word.downcase.chars.sort.join] << word
  end
  groups.values
end
