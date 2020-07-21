# your code goes here
def begins_with_r(array)
  array.all? { |item| item[0] == "r"}
end

def contain_a(array)
  array.select {|item| item.include?("a")}
end

def first_wa(array)
  array.find { |item| item[0..1] == "wa"}
end

def remove_non_strings(array)
  array.select { |item| item.instance_of?(String)}
end

def count_elements(array)
  array.uniq.each { |item| item[:count] = array.count(item)}
end

def merge_data(keys, data)
  final = []
  data.each { |item| item.map { |k,v| final << v } }
  final.map.with_index { |item, idx| keys[idx].merge(item) }
end

def find_cool(array)
  array.select { |item| item if item.values.include?("cool")}
end

def organize_schools(array)
  hash = {}
  array.values.each { |item| item.values.each { |location| hash[location] = []}}
  array.map {|school, location| hash[location.values.last] << school}
  hash
end
