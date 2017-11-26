# your code goes here
# def begins_with_r(array)
#   new_array = []
#   array.each do |item|
#     if item[0] != "r"
#       return false
#     elsif
#       return true
#     end
#   end
# end
def begins_with_r(array)
  new_array = []
  array.each do |item|
    new_array.push(item[0])
  end
  new_array.all? {|item| item == "r"}
end

def contain_a(array)
  new_array = []
  array.each do |item|
    if item.include?("a")
      new_array.push(item)
    end
  end
    return new_array
end

def first_wa(array)
  array.detect do |item|
    new_item = item.to_s
    new_item.include?("wa")
  end
end

def remove_non_strings(array)
  
end
