require './lcd_digits'
 
describe "LcdDigits" do
 
  before(:each) do
    @lcd_digits = LcdDigits.new
  end
 
  def expect_number number
    expectations  = [
      " _ \n| |\n|_|\n",
      "   \n  |\n  |\n",
      " _ \n _|\n|_ \n",
      " _ \n _|\n _|\n",
      "   \n|_|\n  |\n",
      " _ \n|_ \n _|\n",
      " _ \n|_ \n|_|\n",
      " _ \n  |\n  |\n",
      " _ \n|_|\n|_|\n",
      " _ \n|_|\n  |\n",
    ]
    expect(@lcd_digits.convert(number)).to eq expectations[number]
  end
 
  it "should convert digits to their LCD representation" do
    0.upto 9 do |number|
      expect_number number      
    end
  end
  
  it "should convert two digit number to its LCD representation" do
    expected_result = "    _ \n  || |\n  ||_|\n"
    expect(@lcd_digits.convert(10)).to eq expected_result
  end
   
end