# frozen_string_literal: true

require "rspec"
require_relative "../../algorithms/queue"

RSpec.describe Algorithms::Queue do
  let(:queue) { described_class.new }

  describe "#initialize" do
    it "creates an empty queue" do
      expect(queue.size).to eq(0)
      expect(queue.front).to be_nil
      expect(queue.empty?).to be true
    end
  end

  describe "#push" do
    it "adds elements to the queue" do
      queue.push(10)
      expect(queue.size).to eq(1)
      expect(queue.front).to eq(10)

      queue.push(20)
      expect(queue.size).to eq(2)
      expect(queue.front).to eq(10)
    end
  end

  describe "#front" do
    context "when the queue is empty" do
      it "returns nil" do
        expect(queue.front).to be_nil
      end
    end

    context "when the queue has elements" do
      before do
        queue.push(10)
        queue.push(20)
      end

      it "returns the front element" do
        expect(queue.front).to eq(10)
      end
    end
  end

  describe "#pop" do
    context "when the queue is empty" do
      it "returns nil" do
        expect(queue.pop).to be_nil
      end
    end

    context "when the queue has elements" do
      before do
        queue.push(10)
        queue.push(20)
      end

      it "removes and returns the front element" do
        expect(queue.pop).to eq(10)
        expect(queue.size).to eq(1)
        expect(queue.front).to eq(20)
      end

      it "decreases the size of the queue" do
        queue.pop
        expect(queue.size).to eq(1)

        queue.pop
        expect(queue.size).to eq(0)
      end

      it "returns nil after all elements are removed" do
        2.times { queue.pop }
        expect(queue.pop).to be_nil
        expect(queue.size).to eq(0)
      end
    end
  end

  describe "#empty?" do
    it "returns true when the queue is empty" do
      expect(queue.empty?).to be true
    end

    it "returns false when the queue has elements" do
      queue.push(10)
      expect(queue.empty?).to be false
    end
  end
end
