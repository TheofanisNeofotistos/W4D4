#O(n^2) - time 
#O(1) - space

def my_min(array) 
    min = nil
    array.each do |num1|
        array.each do |num2|
            if num1 < num2 && num1 < min.to_i
                min = num1
            end
        end
    end
    min 
end 

# array = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(array)  # =>  -5

#O(n) - time 
#O(1) - space

def my_min(array) # O(n)
    min = nil
    array.each do |num|
        if num < min.to_i 
            min = num 
        end
    end
    min
end

# array = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(array)  # =>  -5

# O(n^2) - time
# def largest_contiguous_subsum(list)
#     sub_arrs = []
#     i = 0

#     while i < list.length
#         sub_arrs << [list[i]]
#         j = i + 1
#         while j < list.length
#             sub_arrs << list[i..j]
#             j += 1
#         end
#         i += 1
#     end

#     sum = 0
#     sub_arrs.each do |arr|
#       sum = arr.sum if arr.sum > sum
#     end
#     sum
# end


#O(n) - time
#O(1) - 
def largest_contiguous_subsum(list)
    current_sum = 0
    largest_sum = 0

    list.each do |num|
        current_sum += num 
        if current_sum > largest_sum
            largest_sum = current_sum
        end

        if current_sum < 0
            current_sum = 0
        end
    end
    largest_sum

end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7
