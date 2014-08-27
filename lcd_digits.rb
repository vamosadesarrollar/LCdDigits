class LcdDigits
 
  LCD_REPRESENTATIONS  = [
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
 
  def convert(number)
    if number < 10 
      return LCD_REPRESENTATIONS[number]  
    else
      result = ["","",""]  
      
      string_number = number.to_s
      string_number.each_char do |digit|
        result.each_with_index do |line, index|
          result[index] += LCD_REPRESENTATIONS[digit.to_i].split("\n")[index]
        end
      end
      return result.join("\n")+"\n"
    end
  end
 
end