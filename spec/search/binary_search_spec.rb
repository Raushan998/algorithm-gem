require 'rspec'
require_relative '../../lib/algorithms/search/binary_search'

RSpec.describe Algorithms::Search::BinarySearch do
  describe '#search_value' do
    context 'when the value is present in the array' do
      it 'returns true' do
        binary_search = Algorithms::Search::BinarySearch.new(1, 2, 3, 4, 5)
        expect(binary_search.search_value(3)).to be true
      end
    end

    context 'when the value is not present in the array' do
      it 'returns false' do
        binary_search = Algorithms::Search::BinarySearch.new(1, 2, 3, 4, 5)
        expect(binary_search.search_value(6)).to be false
      end
    end

    context 'when searching an empty array' do
      it 'returns false' do
        binary_search = Algorithms::Search::BinarySearch.new()
        expect(binary_search.search_value(1)).to be false
      end
    end

    context 'when searching an array with a single element' do
      it 'returns true if the element matches the value' do
        binary_search = Algorithms::Search::BinarySearch.new(5)
        expect(binary_search.search_value(5)).to be true
      end

      it 'returns false if the element does not match the value' do
        binary_search = Algorithms::Search::BinarySearch.new(5)
        expect(binary_search.search_value(3)).to be false
      end
    end

    context 'when searching a large sorted array' do
      it 'returns true if the element is found' do
        large_array = (1..1000).to_a
        binary_search = Algorithms::Search::BinarySearch.new(*large_array)
        expect(binary_search.search_value(500)).to be true
      end

      it 'returns false if the element is not found' do
        large_array = (1..1000).to_a
        binary_search = Algorithms::Search::BinarySearch.new(*large_array)
        expect(binary_search.search_value(1001)).to be false
      end
    end
  end
end
