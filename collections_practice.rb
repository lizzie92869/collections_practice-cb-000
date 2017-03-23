def sort_array_asc(array_integers)
  array_integers.sort
end

def sort_array_desc(array_integers)
  array_integers.sort { |a, b| b<=>a }
end

def sort_array_char_count(array_strings)
  array_strings.sort { |a, b| a.length <=> b.length }
end

def swap_elements(array)
  array=[array[0], array[2], array[1]]
end

def swap_elements_from_to(array, index, destination_index)
  array[index], array[destination_index] = array[destination_index], array[index]
  array
end

def reverse_array(array_integers)
  array_integers.reverse
end

def kesha_maker(array_strings)
  array_strings.each do |string|
    string[2]="$"
  end
end

def find_a(array_strings)
  array_strings.select {|string| string.start_with?("a")}
end

def sum_array(array_integers)
  #array_integers.inject {|sum, n| sum+n}
  array_integers.inject(:+)
end

# def add_s(array_words)
#   array_words.each do |word|
#     if word==array_words[1]
#     else
#     word[word.length]="s"
#     end
#   end
# end

def add_s(array_words)
  array_words.each_with_index.collect do |word, index|
    index != 1 ? word.to_s << "s" : word
  end
end
