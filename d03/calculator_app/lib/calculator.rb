class Calculator
  def self.add(numbers)
    numbers.map! do |n|
      n.to_i
    end
    numbers.inject(:+)
  end

  def self.multiply(numbers)
    numbers.map! do |n|
      n.to_i
    end
    numbers.inject(:*)
  end

  def self.subtract(numbers)
    numbers.map! do |n|
      n.to_i
    end
    numbers.inject(:-)
  end

  def self.divide(numbers)
    numbers.map! do |n|
      n.to_i
    end
    numbers.inject(:/)
  end
end
