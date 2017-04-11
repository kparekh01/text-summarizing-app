# Summarize_app

text = %q{

    Ruby is a great progrramming language.  It is object oriented
    and has many groovy features.  Some people don't like it but that's
    not our problem!  It's easy to learn.  It's great.  To learn more about Ruby,
    visit the official ruby website today.
}

sentences = text.gsub(/\s+/, " ").strip.split(/\!|\.|\?/)
#text.gsub(/\s+/(means one or more whitespace characters), " ").strip will take any
#spaces from beginning or end of the string ad chomp them off, then txt will be
#split where ever there is a !,.,?.
sentences_sorted = sentences.sort_by{|sentence| sentence.length}
#sentences sorted by length
one_third = sentences_sorted.length/3
#returns one_third of the sentences in the array
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
#if sentences_sorted length is 6, that makes value of one_third = 2, one_third + 1 = 3
#so .slice will take the middle third of the sorted sentences in this case the 3rd and the 4th
#represented by positions of .slice(2, 3).
ideal_sentences = ideal_sentences.select{|sentence| sentence =~ /is|are/}
puts ideal_sentences.join(".  ")
puts"*********************************************"
puts sentences_sorted
puts"*********************************************"
puts sentences_sorted.length
puts"*********************************************"
puts one_third
puts"*********************************************"
puts ideal_sentences
