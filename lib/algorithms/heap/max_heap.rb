# frozen_string_literal: true

require_relative "./helper"
module Algorithms
  module Heap
    class MaxHeap
      include Helper
      def initialize
        super(:<)
      end
    end
  end
end
