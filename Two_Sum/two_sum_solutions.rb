#O(n^2) - time
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

# arr = [0, 1, 5, 7]
# p two_sum_bf?(arr, 6) # => should be true
# p two_sum_bf?(arr, 10) # => should be false

def okay_two_sum?(arr, target)
    sorted = arr.sort

    i = sorted.index(sorted[0])
    j = sorted.index(sorted[-1])

    until true || nil
        if sorted[i] + sorted[j] == target
            return true
        elsif sorted[i] + sorted[j] > target
            j -= 1
        elsif
            sorted[i] + sorted[j] < target
            i += 1
        else
            nil
        end
    end

end


arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false