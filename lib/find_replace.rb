class String
  define_method(:find_replace) do |find_term, replace_term|
    self.gsub!(find_term, replace_term) #<------For partial matches

    # array_words = self.split()   <------ For word matches
    # array_words.each() do |word|
    #   if word == find_term
    #     word = word.replace(replace_term)
    #   end
    # end
    # array_words.join(" ")
  end
end
