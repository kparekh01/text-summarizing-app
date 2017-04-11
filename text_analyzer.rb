# TEXT Analyzer and summarizer App!
lines = File.readlines("text_file.txt")
line_count = lines.length
text = lines.join
total_chacter_no_spaces = text.gsub(/\s+/, "").length #or text.split("").length
word_count = text.split.length
sentence_count = text.split(/\.|\?|\!/).length
paragraph_count = text.split(/\n\n/).length

sentences = text.gsub(/\s+/, " ").strip.split(/\!|\.|\?/)
sentences_sorted = sentences.sort_by{|sentence| sentence.length}
one_third = sentences_sorted.length/3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select{|sentence| sentence =~ /is|are/}

stop_words = %w{the a by on for of are with just but and to the my in I has some}
words = text.scan(/\w+/)
keywords = words.select{ |word| !stop_words.include?(word)}
useful = ((keywords.length.to_f / words.length.to_f)*100).to_i



puts "#{line_count} lines!"
puts "#{text.length} characters!"
puts "#{total_chacter_no_spaces} characters, without any spaces!"
puts "#{word_count} words!"
puts "#{sentence_count} sentences!"
puts "#{paragraph_count} paragraphs!"
puts "#{word_count / sentence_count} words per sentence avg!"
puts "#{sentence_count / paragraph_count} sentences per paragraph avg!"
puts "#{useful}% of the words are non-fluff words!"
puts "Summary :
#{ideal_sentences.join(".  ")}"
