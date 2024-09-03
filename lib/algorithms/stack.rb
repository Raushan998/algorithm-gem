# frozen_string_literal: true

module Algorithms
  class Stack
    attr_accessor :arr

    def initialize
      @arr = []
    end

    def push(element)
      @arr.push(element)
    end

    def pop
      @arr.pop
    end

    def top
      return -1 if @arr.empty?

      @arr[size - 1]
    end

    def size
      @arr.size
    end
  end
end
