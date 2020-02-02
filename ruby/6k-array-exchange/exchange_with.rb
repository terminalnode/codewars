# https://www.codewars.com/kata/5353212e5ee40d4694001114/

class Array
  def exchange_with!(other_array)
    temp = Array.new(other_array).reverse
    other_array.replace self
    self.replace temp
  end
end
