# spec/algorithms/stack_spec.rb

require 'rspec'
require_relative '../../algorithms/stack'

RSpec.describe Algorithms::Stack do
  let(:stack) { described_class.new }

  describe '#initialize' do
    it 'initializes an empty stack' do
      expect(stack.arr).to eq([])
    end
  end

  describe '#push' do
    it 'adds an element to the stack' do
      stack.push(5)
      expect(stack.arr).to eq([5])
    end

    it 'adds multiple elements to the stack' do
      stack.push(1)
      stack.push(2)
      stack.push(3)
      expect(stack.arr).to eq([1, 2, 3])
    end
  end

  describe '#pop' do
    it 'removes the last element from the stack' do
      stack.push(10)
      stack.push(20)
      expect(stack.pop).to eq(20)
      expect(stack.arr).to eq([10])
    end

    it 'returns nil when popping from an empty stack' do
      expect(stack.pop).to be_nil
    end
  end

  describe '#top' do
    it 'returns the last element without removing it' do
      stack.push(15)
      stack.push(25)
      expect(stack.top).to eq(25)
      expect(stack.arr).to eq([15, 25])
    end

    it 'returns -1 when the stack is empty' do
      expect(stack.top).to eq(-1)
    end
  end

  describe '#size' do
    it 'returns the correct size of the stack' do
      expect(stack.size).to eq(0)
      stack.push(5)
      stack.push(10)
      expect(stack.size).to eq(2)
    end
  end
end
