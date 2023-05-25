# def my_min(array) #O(n^2)
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