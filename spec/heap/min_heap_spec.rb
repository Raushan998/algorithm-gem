# spec/algorithms/heap/min_heap_spec.rb
require 'algorithms/heap/min_heap'

RSpec.describe Algorithms::Heap::MinHeap do
  let(:heap) { described_class.new }

  describe '#push' do
    it 'adds elements and maintains heap property' do
      heap.push(10)
      expect(heap.top).to eq(10)

      heap.push(5)
      expect(heap.top).to eq(5)

      heap.push(15)
      expect(heap.top).to eq(5)
    end
  end

  describe '#pop' do
    it 'removes the minimum element and maintains heap property' do
      heap.push(10)
      heap.push(5)
      heap.push(15)

      heap.pop
      expect(heap.top).to eq(10)

      heap.pop
      expect(heap.top).to eq(15)

      heap.pop
      expect(heap.top).to be_nil
    end

    it 'returns nil when the heap is empty' do
      expect(heap.pop).to be_nil
    end
  end

  describe '#top' do
    it 'returns the minimum element or nil if empty' do
      expect(heap.top).to be_nil

      heap.push(20)
      expect(heap.top).to eq(20)

      heap.push(10)
      expect(heap.top).to eq(10)

      heap.pop
      expect(heap.top).to eq(20)
    end
  end

  describe '#size' do
    it 'returns the correct number of elements' do
      expect(heap.size).to eq(0)

      heap.push(10)
      heap.push(5)
      expect(heap.size).to eq(2)

      heap.pop
      expect(heap.size).to eq(1)

      heap.pop
      expect(heap.size).to eq(0)
    end
  end
end
