# frozen_string_literal: true

module Algorithms
  class Queue
    attr_reader :size

    def initialize
      @head = @tail = LinkedList.new
      @size = 0
    end

    def push(element)
      if @tail.value.nil?
        @tail.value = element
      else
        @tail.next = LinkedList.new(element)
        @tail = @tail.next
      end
      @size += 1
    end

    def front
      return nil if empty?

      @head.value
    end

    def pop
      return nil if empty?

      value = @head.value
      @head = @head.next
      @size -= 1
      value
    end

    def empty?
      @size.zero?
    end
  end

  class LinkedList
    attr_accessor :value, :next

    def initialize(value = nil)
      @value = value
      @next = nil
    end
  end
end
