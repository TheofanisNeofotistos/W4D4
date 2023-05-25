#O(n^2) - time 
#O(1) - space

# def my_min(array) 
#     min = nil
#     array.each do |num1|
#         array.each do |num2|
#             if num1 < num2 && num1 < min.to_i
#                 min = num1
#             end
#         end
#     end
#     min 
# end 

# array = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(array)  # =>  -5

#O(n) - time 
#O(1) - space

# def my_min(array) # O(n)
#     min = nil
#     array.each do |num|
#         if num < min.to_i 
#             min = num 
#         end
#     end
#     min
# end

# array = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(array)  # =>  -5

def largest_contiguous_sub_sum(list)
    sub_arrs = []
    
    list.each do |ele|
        list.each do |ele2|
            
        end
    end

end

list = [5, 3, -7]
largest_contiguous_subsum(list) # => 8

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7