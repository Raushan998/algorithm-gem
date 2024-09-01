# frozen_string_literal: true

RSpec.describe Algorithms::Heap::MaxHeap do
  let(:max_heap) { described_class.new }

  describe "#push" do
    it "adds elements to the heap and maintains max heap property" do
      max_heap.push(5)
      expect(max_heap.top).to eq(5)

      max_heap.push(10)
      expect(max_heap.top).to eq(10)

      max_heap.push(3)
      expect(max_heap.top).to eq(10)

      max_heap.push(8)
      expect(max_heap.top).to eq(10)
    end
  end

  describe "#pop" do
    context "when heap is not empty" do
      before do
        [5, 10, 3, 8].each { |num| max_heap.push(num) }
      end

      it "removes the maximum element and maintains max heap property" do
        max_heap.pop
        expect(max_heap.top).to eq(8)

        max_heap.pop
        expect(max_heap.top).to eq(5)

        max_heap.pop
        expect(max_heap.top).to eq(3)
      end

      it "reduces the size of the heap after each pop" do
        expect { max_heap.pop }.to change { max_heap.size }.by(-1)
        expect { max_heap.pop }.to change { max_heap.size }.by(-1)
      end
    end

    context "when heap is empty" do
      it "returns nil" do
        expect(max_heap.pop).to be_nil
      end
    end
  end

  describe "#top" do
    it "returns the maximum element without removing it" do
      max_heap.push(5)
      max_heap.push(15)
      max_heap.push(10)

      expect(max_heap.top).to eq(15)
      expect(max_heap.size).to eq(3) # Ensure size is unchanged
    end

    it "returns nil if the heap is empty" do
      expect(max_heap.top).to be_nil
    end
  end

  describe "#size" do
    it "returns the number of elements in the heap" do
      expect(max_heap.size).to eq(0)
      max_heap.push(5)
      expect(max_heap.size).to eq(1)
      max_heap.push(15)
      expect(max_heap.size).to eq(2)
    end
  end
end
