# frozen_string_literal: true

require "rspec"
require_relative "../../lib/algorithms/heap/min_heap"

RSpec.describe Algorithms::Heap::MinHeap do
  let(:min_heap) { described_class.new }

  describe "#push" do
    it "inserts an element and returns the correct size" do
      min_heap.push(1)
      expect(min_heap.size).to eq(1)
    end
  end

  context "with multiple elements inserted" do
    before do
      min_heap.push(10)
      min_heap.push(5)
      min_heap.push(20)
      min_heap.push(12)
      min_heap.push(21)
      min_heap.push(9)
    end

    describe "#top" do
      it "returns the top minimum element" do
        expect(min_heap.top).to eql(5)
      end
    end

    describe "#pop" do
      it "returns the new minimum after popping the top element" do
        min_heap.pop
        expect(min_heap.top).to eql(9)
      end
    end
  end

  describe "#size" do
    it "returns the correct size of the heap" do
      min_heap.push(10)
      min_heap.push(5)
      min_heap.push(20)
      expect(min_heap.size).to eql(3)
    end
  end

  describe "#push with existing elements" do
    it "inserts a new element and returns the new minimum" do
      min_heap.push(10)
      min_heap.push(5)
      min_heap.push(20)
      min_heap.push(2)
      expect(min_heap.top).to eql(2)
    end
  end
end
