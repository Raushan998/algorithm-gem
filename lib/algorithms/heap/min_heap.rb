# frozen_string_literal: true

require_relative "./helper"
module Algorithms
  module Heap
    class MinHeap
      include Helper
      def initialize
        super(:>)
      end
    end
  end
end
