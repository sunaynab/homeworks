class Stack
    def initialize
      @stack = []
    end

    def add(el)
      @stack << el
    end

    def remove
      @stack.pop
    end

    def show
      @stack.dup
    end
  end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    @queue.dup
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map << [key, value]
  end

  def lookup(key)
    @map.each do |pair|
      return pair[1] if pair[0] == key
    end
  end

  def remove(key)
    @map.reject! do |pair|
      pair[0] == key
    end
  end

  def show
    deep_dup(@map)
  end

  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end
end
