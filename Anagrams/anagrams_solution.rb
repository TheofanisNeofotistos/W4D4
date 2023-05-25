
#O(n!) - time
#O(n!) - space
def first_anagram?(str1,str2)
    anagrams = str1.split("").permutation.to_a

    new_anagrams = anagrams.map { |ana| ana.join("") }

    new_anagrams.include?(str2)

end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true


def second_anagram?(str1, str2)
    str1.split

end


# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true


#O(n log n) - time
#O(n) - space
def third_anagram?(str1, str2)
  str1.split("").sort.join("") == str2.split("").sort.join("")
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true


#O(n) - time
#O(1) - space
def fourth_anagram?(str1, str2)
    count1 = Hash.new(0)
    count2 = Hash.new(0)

    str1.each_char { |char| count1[char] += 1 }
    str2.each_char { |char| count2[char] += 1}

    count1 == count2
end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true