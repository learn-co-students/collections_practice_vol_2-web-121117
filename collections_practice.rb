# your code goes here
require "pry"
def begins_with_r(array)
  array.each do |x|
    if x.downcase[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  hold = []
  array.each do |x|
    if x.downcase.include?("a")
      hold << x
    end
  end
  hold
end

def first_wa(array)
  hold = ""
  array.each do |x|
    if  x.downcase.to_s.include?("wa")
      hold = x
      break
    end
  end
  hold
end

def remove_non_strings(array)
  hold = []
  array.each do |x|
    if  x.class == String
      hold << x
      break
    end
  end
  hold
end

def count_elements(array)
   counts = Hash.new(0)
   array.each do |item|
    counts[item[:name]] += 1
   end
   counts

   result = []
   counts.map do |key, value|
     hold = {}
     hold[:name] = key
     hold[:count] = value
     result << hold
   end
   result
 end

def merge_data(keys,data)
  keys.collect do |e|
    e.merge(data[0][e[:first_name]])
   end
end

def find_cool(array)
  hold = []
  array.collect do |x|
    if x[:temperature] == "cool"
      hold << x
    end
  end
  hold
end

def organize_schools(hash)
  result = {}
  hash.each do |school, location|
    if result[hash[school][:location]].nil?
      result[hash[school][:location]] = [school]
    else
      result[hash[school][:location]] << school
    end
  end
  result
end
