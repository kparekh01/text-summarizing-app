text = %q{Los angles has some of the nicest weather in the country}
stop_words = %w{the a by on for of are with just but and to the my in I has some}

words = text.scan(/\w+/)
keywords = words.select{ |word| !stop_words.include?(word)}
percentage = ((keywords.length.to_f / words.length.to_f)*100).to_i

p words #grabs all the words.
p keywords.join(" ") # all useful words in sentence minus the stopwords.p
p "#{percentage}% of the words in this paragraph are useful." #percentage of useful words in sentence!
