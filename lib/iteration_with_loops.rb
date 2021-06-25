require 'pry'
def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  
  # src.join(", ")
  # new_array = src.map do |array| 
  #   array.filter {|x| x.class == String}
  # end
  # new_array.join(" ")
  
  # src.flatten().filter{|element| element.class == String}.join(" ")

  src.flatten().reduce("") do |accum, element|
    if element.class == String
      accum + " " + element
    else 
      accum
      # inside else 'element' is a number, so we don't do anything with it
    end
  end
end