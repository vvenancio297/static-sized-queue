class StaticSizedQueue
  attr_reader :items

  def initialize(size)
    @items = Array.new(size)
  end

  def pop
    items.each_with_index do |element, index|
      if last_index?(index)
        items[index] = nil
      else
        items[index] = items[index + 1]
      end
    end
  end

  def push(n)
    current_value = nil
    previous_value = n

    items.each_with_index do |element, index|
      current_value = items[index]
      items[index] = previous_value
      previous_value = current_value
    end
  end

  private

  def last_index?(index)
    items.count - 1 == index
  end
end
