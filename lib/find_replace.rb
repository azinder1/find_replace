class String
  define_method(:find_replace) do |find_term, replace_term|
    self.downcase().gsub!(find_term.downcase(), replace_term)
  end
end

  # define_method(:find_replace_all) do |find_term, replace_term|
  #   array_words = self.split()
  #   array_words.each() do |word|
  #     if word == find_term
  #       word = word.replace(replace_term)
  #     end
    # array_words.join(" ")
    # end
