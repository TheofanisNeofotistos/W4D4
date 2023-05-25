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

#O(n log n) - time (due to recursion)

def okay_two_sum?(arr, target)
    sorted = arr.sort

    i = 0
    j = -1

    until i + j == 0 
        if sorted[i] + sorted[j] == target
            return true
        elsif sorted[i] + sorted[j] > target
            j -= 1
        elsif
            sorted[i] + sorted[j] < target
            i += 1
        end
    end
   false
end


# arr = [5, 7, 1, 0]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


def two_sum?(arr,target)
    hash = Hash.new(0)

    arr.each do |ele|
        hash[ele] = (target - ele)
    end

    hash.value do |v|
        return v == 0 
    end

end


arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false