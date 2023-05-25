def first_anagram?(str1,str2)
    chars = str1.split("")

    # return chars if chars.length <= 1
    
    first = chars.shift
    # anagrams = first_anagram(chars)
    possible_anagrams = []

    chars.each do |char|
        (0..chars.length).to_a.each do |i|
            possible_anagrams << (chars[0...i] + [first] + chars[i..-1]).join("")
        end
    end

    return possible_anagrams
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true