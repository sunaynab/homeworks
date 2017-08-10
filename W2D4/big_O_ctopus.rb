def sluggish_octopus(fish_arr) #O(n^2)
  longest = ""

  fish_arr.each_with_index do |fish, i|
    longest_length = true
    fish_arr.each_with_index do |f, i2|
      next if i == i2
      max_length = false if fish.length > f.length
    end
    return f if max_length
  end
end

class Array #utilizing in the O(nlogn) time method
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end


def dominant_octopus(fish_arr) #O(nlogn)
  prc = Proc.new {|x, y| y.length <=> x.length}
  fish_arr.merge_sort(&prc)[0]
end

def clever_octopus(fish_arr) #O(n)
  longest_fish = fish_arr.first

  fish_arr.each do |fish|
    if fish.length > longest_fish.length
      longest_fish = fish
    end
  end

  longest_fish

end

  def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |tile, index|
    return index if tile == direction
  end
end



def constant_dance(direction, tiles_array)
  new_hash = Hash[tiles_array.map.with_index.to_a]
  new_hash[direction]
end
