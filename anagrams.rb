# Phase 1: O(n!)
def first_anagram?(str1, str2)
  words = str1.chars.permutation.to_a
  words.map! { |word| word.join }
  words.include?(str2)
end

#Phase 2: 
def second_anagram?(str1, str2)
  str1_ch, str2_ch = str1.chars, str2.chars 

  str1_ch.each_with_index do |char,idx| 
    i = 0
    while i < str2_ch.length 
      if char == str2[i]
        str1_ch[idx], str2_ch[i] = "", ""
        i = str2.length 
      end   
      i +=1 
    end 
  end
  
  str1_ch.join.empty? && str2_ch.join.empty?
end

def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end 