require 'pry'

def begins_with_r(arr)
  newArr = arr.select do |x| x.start_with? 'r'
  end
  if newArr.length == arr.length
    return true
  else
    return false
  end
end

def contain_a(arr)
  arr.select { |word| word.include?('a') }
end

def first_wa(arr)
arr_of_one = []
  arr_of_one << arr.select do |word| word.to_s.start_with?("wa")
end
arr_of_one[0][0]
end

def remove_non_strings(arr)
string = []
arr.each do |x|
  if x.class == String
    string << x
end
end
string
end

##
def count_elements(arr)
arr.uniq.each do |word|
  word[:count] = arr.count(word)
  end
end

def merge_data(keys, data)
keys.collect do |key|
  key.merge(data[0][key[:first_name]])
end
end

def find_cool(arr)
empty_arr = []
arr.each do |hash_of_awesome|
  if hash_of_awesome[:temperature] == "cool"
    empty_arr << hash_of_awesome
    return empty_arr
  end
end
end

def organize_schools(arr)
hashtastic = {}
arr.each do |school_string, location_hash|
  location_hash.each do |location_symbol, location_string|
    hashtastic[location_string] ||= []
    hashtastic[location_string] << school_string
    # if hashtastic[location_string] == nil
    #   hashtastic[location_string] = [school_string]
    # else
    #   hashtastic[location_string] << school_string
    # end
  end
end
hashtastic
end
