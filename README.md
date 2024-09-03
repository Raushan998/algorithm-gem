# Algorithms


The algorithms gem is a comprehensive Ruby library offering a range of essential data structures and algorithms. It includes efficient implementations of algorithms for sorting, searching, and graph traversal, as well as various data structures such as heaps, stacks, queues, and trees. This gem is ideal for developers who need ready-to-use, reliable tools for solving computational problems and optimizing their Ruby applications.

```markdown
           _                  _ _   _                   
     /\   | |                (_) | | |                  
    /  \  | | __ _  ___  _ __ _| |_| |__  _ __ ___  ___ 
   / /\ \ | |/ _` |/ _ \| '__| | __| '_ \| '_ ` _ \/ __|
  / ____ \| | (_| | (_) | |  | | |_| | | | | | | | \__ \
 /_/    \_\_|\__, |\___/|_|  |_|\__|_| |_|_| |_| |_|___/
              __/ |                                     
             |___/ 
```
## Installation

Please Clone this file to your local and we have not added this gem rubygems.org portal.

Install the gem and add to the application's Gemfile by executing:


```bash
gem install algorithms-(*version).gem
```

## Usage

TODO: 

Binary Search (Please send the array in sorted order)
```
arr = Algorithms::Search::BinarySearch.new(1,2,3,4,5,6,7,8)
arr.search_value(3)
=> true
arr.search_value(10)
=> false
```
Heap

```
MinHeap

heap = Algorithms::Heap::MinHeap.new

## Insert the element
heap.push(10)
heap.push(20)
heap.push(5)
heap.push(8)
heap.push(11)

# Returns the smallest element
heap.top => 5

# removes the top element
heap.pop 

# get the size of heap
heap.size

```

```
MaxHeap

heap = Algorithms::Heap::MaxHeap.new

## Insert the element
heap.push(10)
heap.push(20)
heap.push(5)
heap.push(8)
heap.push(11)

# Returns the smallest element
heap.top => 20

# removes the top element
heap.pop 

# get the size of heap
heap.size

```

Stack

```
stack = Algorithms::Stack.new

stack.push(10)
stack.push(20)
stack.push(30)
stack.push(40)

stack.top() => 40
stack.pop() => removes the last element

stack.top() => 30

stack.empty? => false # stack is not empty
```


Queue
```
queue = Algorithms::Queue.new
queue.push(10)
queue.push(20)
queue.push(30)
queue.push(40)

queue.front() => 10 # returns the top element of queueu
queue.pop() => removes the first element of queue i.e; 10

queue.front() => 20
queue.empty? => returns false

```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Raushan998/algorithms. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Raushan998/algorithms/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Algorithms project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Raushan998/algorithms/blob/master/CODE_OF_CONDUCT.md).
