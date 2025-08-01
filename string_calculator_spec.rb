require "./string_calculator"

describe "Add all the numbers in a string" do

  subject { StringCalculator.new }

  it "returns 0 for an empty string" do
    expect(subject.add("")).to eq(0)
  end

  it "return sum with only one number in string" do
    expect(subject.add("1")).to eq(1)
  end

  it "return sum with more than one number in string" do
    expect(subject.add("1, 2")).to eq(3)
  end

  it "return sum with more than one number in string separated by newline" do
    expect(subject.add("1\n2, 3")).to eq(6)
  end

  it "should raise an exception for negative numbers" do
    expect { subject.add("1\n-2,3") }.to raise_error("negative numbers not allowed (-2)")
  end

  it "should raise an exception for negative numbers with numbers separated with commas" do
    expect { subject.add("1\n-2,3, -4, -5\n6,-7") }.to raise_error("negative numbers not allowed (-2, -4, -5, -7)")
  end

  it "should raise exception for negative numbers with given delimiter" do
    expect { subject.add("//;:\n1;:-2;:3;: -4;: -5;:6;:-7") }.to raise_error("negative numbers not allowed (-2, -4, -5, -7)")
    expect { subject.add("///\n1/-2/3/ -4/ -5/6/-7") }.to raise_error("negative numbers not allowed (-2, -4, -5, -7)")
  end

  it "should return sum with given delimiter" do
    expect(subject.add("//;\n1; 1; 1")).to eq(3)
    expect(subject.add("//**\n2** 3** 1")).to eq(6)
  end

end
