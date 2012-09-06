def palindrome?(str)
  str.downcase.gsub(/\W/,'') == str.downcase.gsub(/\W/,'').reverse
end

def count_words(str)
  words = Hash.new(0)
  str.downcase.split.each do |word|
    if word.gsub(/\W/,"") != ""
      words[word] += 1
    end
  end
  words
end
