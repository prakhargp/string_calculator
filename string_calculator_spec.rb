require "./string_calculator"

describe "Add all the numbers in a string" do
  it "returns 0 for an empty string" do
    calc = StringCalculator.new
    expect(calc.add("")).to eq(0)
  end

  it "return sum with only one number in string" do
  end

  it "return sum with more than one number in string" do
  end

end
