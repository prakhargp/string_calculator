require "./string_calculator"

describe "Add all the numbers in a string" do
  it "returns 0 for an empty string" do
    calc = StringCalculator.new
    expect(calc.add("")).to eq(0)
  end

  it "return sum with only one number in string" do
    calc = StringCalculator.new
    expect(calc.add("1")).to eq(1)
  end

  it "return sum with more than one number in string" do
    calc = StringCalculator.new
    expect(calc.add("1, 2")).to eq(3)
  end

  it "return sum with more than one number in string separated by newline" do
    calc = StringCalculator.new
    expect(calc.add("1\n2, 3")).to eq(6)
  end

end
