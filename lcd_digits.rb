class LcdDigits
  LCD_REPRESENTATIONS = [
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
    return number.to_s.chars.reduce([""] * 3) do |result, digit|
      result.zip(LCD_REPRESENTATIONS[digit.to_i].split("\n")).map(&:join)
    end.join("\n") + "\n"
  end
end
