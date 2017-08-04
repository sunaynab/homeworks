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
    @queue << el
  end

  def dequeue
    @queue.pop
  end

  def show
    @queue.dup
  end
end
