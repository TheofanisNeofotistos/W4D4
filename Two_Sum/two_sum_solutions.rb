def two_sum_bf? (arr,target)
    arr.each_with_index do |num1,idx1|
        arr.each_with_index do |num2,idx2|
            if idx2 > idx1 
                return true if num1 + num2 == target
            end
        end
    end 
    false 
end

arr = [0, 1, 5, 7]
p two_sum_bf?(arr, 6) # => should be true
p two_sum_bf?(arr, 10) # => should be false