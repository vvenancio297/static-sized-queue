# Description

In order to practice a little bit more about queues in Ruby, this class implements a queue with a specified elements quantity.

## Usage

```ruby
# queue size
size = 4

queue = StaticSizedQueue.new(size)

# adding elements into it
element = 5
queue.push(element)

# removing elements from it
queue.pop

# printing queue state
print queue.items
```
