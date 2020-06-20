describe Computer::App::Calculator do
  subject(:calculator) { described_class.new }

  # The `#` symbol means we are describing an `instance` method in the class.
  describe "#calculate" do
    it "correctly returns a result when there are multiple operations (sum, subtraction)" do
      input = "5 + 5 - 2 + 3 - 1"
      expect(calculator.calculate(input: input)).to eq(10)
    end

    it "correctly returns a result when there are only sums" do
      input = "2 + 5 + 7 + 8 + 1"
      expect(calculator.calculate(input: input)).to eq(23)
    end

    it "correctly returns a result when there are only subtractions" do
      input = "2 - 5 - 8 - 1"
      expect(calculator.calculate(input: input)).to eq(-12)
    end

    it "returns zero (0) if there are invalid characters" do
      input = "2 - 5 - b -$ 123$$ $"
      expect(calculator.calculate(input: input)).to eq(0)
    end

    it "returns the initial number if there are no operations to be performed on the number" do
      input = "2"
      expect(calculator.calculate(input: input)).to eq(2)
    end

    it "returns correct results when there are only 2 numbers", aggregate_failures: true do
      expect(calculator.calculate(input: "2 + 2")).to eq(4)
      expect(calculator.calculate(input: "1 - 0")).to eq(1)
      expect(calculator.calculate(input: "10 - 10")).to eq(0)
    end
  end
end
