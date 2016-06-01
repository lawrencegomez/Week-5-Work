require "calculator"

describe Calculator do

  describe ".add" do
    it "adds an array of numbers togeher" do
      expect(Calculator.add([1,2,3])).to eq(6)
    end
    it "accepts mixed input" do
      expect(Calculator.add(['3',4,5])).to eq(12)
    end
    it "returns nil if the array is empty" do
      expect(Calculator.add([])).to be_nil
    end
  end

  describe ".multiply" do
    it "multiplies an array of numbers together" do
      expect(Calculator.multiply([2,4])).to eq(8)
    end
  end

  describe ".subtract" do
    it "subtracts on number from another" do
      expect(Calculator.subtract([10,4])).to eq(6)
    end
  end
  describe ".divide" do
    it "divides one number by another" do
      expect(Calculator.divide([2,1])).to eq(2)
    end
  end
end
