require_relative 'fixed_array'
require_relative 'exceptions'

class ArrayList
  attr_reader :length

  def initialize
    @fixed_array = FixedArray.new(2)
    @length = 0
  end

  def add(item)
    expand_array_capacity if length == fixed_array.size

    fixed_array.set(length, item)
    self.length += 1

    item
  end

  def get(index)
    raise NoSuchElementError if index >= length
    fixed_array.get(index)
  end

  def set(index, value)
    if length != 0 && index >= length
      raise NoSuchElementError
    end
    fixed_array.set(index, value)
  end

  def insert(index, value)
    if length != 0 && index >= length
      raise OutOfBoundsError
    end
    expand_array_capacity if length == fixed_array.size

    (length-1).downto(index) do |current|
      current_value = fixed_array.get(current)
      fixed_array.set(current+1, current_value)
    end

    fixed_array.set(index, value)
    self.length += 1
    value
  end

  def first
    raise NoSuchElementError if length == 0
    @fixed_array.get(0)
  end

  def last
    raise NoSuchElementError if length == 0
    @fixed_array.get(length - 1)
  end

  private

  attr_accessor :fixed_array
  attr_writer :length

  def expand_array_capacity
    new_array = FixedArray.new(fixed_array.size * 2)

    0.upto(last_index).each do |i|
      value = fixed_array.get(i)
      new_array.set(i, value)
    end

    self.fixed_array = new_array
  end

  def last_index
    length - 1
  end
end
