# frozen_string_literal: true

module Algorithms
    module Heap
      class MaxHeap
        attr_reader :arr
  
        def initialize
          @arr = []
        end
  
        def push(element)
          @arr.push(element)
          shift_up
        end
  
        def pop
          return if @arr.empty?
  
          last_idx = @arr.length - 1
          @arr[last_idx], @arr[0] = @arr[0], @arr[last_idx]
          @arr.pop
          shift_down
        end
  
        def top
          @arr[0]
        end
  
        def size
          @arr.length
        end
  
        private
  
        def shift_up
          _idx = @arr.length - 1
          while _idx.positive?
            parent_idx = (_idx - 1) / 2
            break unless @arr[parent_idx] < @arr[_idx]
  
            @arr[parent_idx], @arr[_idx] = @arr[_idx], @arr[parent_idx]
  
            _idx = parent_idx
          end
        end
  
        def shift_down
          current_index = 0
          while current_index < @arr.size
            left_child_index = 2 * current_index + 1
            right_child_index = 2 * current_index + 2
            smallest_index = [current_index,
                              left_child_index,
                              right_child_index].select { |i| i < @arr.size }.max_by { |i| @arr[i] }
  
            break if smallest_index == current_index
  
            @arr[current_index], @arr[smallest_index] = @arr[smallest_index], @arr[current_index]
            current_index = smallest_index
          end
        end
      end
    end
  end
  