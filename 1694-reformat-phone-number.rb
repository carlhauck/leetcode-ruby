# @param {String} number
# @return {String}
def reformat_number(number)
  number.delete!("- ")
  segments = []
  while number.length > 0
    if number.length > 4
      segments << number.slice!(0..2)
    elsif number.length == 4
      2.times do
        segments << number.slice!(0..1)
      end
    else
      segments << number.slice!(0..-1)
    end
  end
  segments.join("-")
end