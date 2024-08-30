module Algorithms
    module Search
        class BinarySearch
            def initialize(*arr)
                @arr = arr
            end

            def search_value(value)
                start_idx, end_idx = 0, @arr.length - 1
                while start_idx <= end_idx
                    mid = (start_idx + end_idx)/2
                    if @arr[mid] == value
                        return true
                    elsif @arr[mid] > value
                       end_idx = mid - 1
                    else
                        start_idx = mid + 1
                    end
                end
                false
            end
        end
    end
end