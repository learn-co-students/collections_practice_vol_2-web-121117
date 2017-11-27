
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
  array.each do |item|
    if item.is_a?(String)
      return_value = [array.delete(item)]
    end
        return return_value
  end
end


def count_elements(array)
  word_count = Hash.new 0
  array.each do |array_item|
    word_count[array_item] += 1
  end

  new_array = []
    word_count.each do |name_hash,count_value|
      name_hash[:count] = count_value
      new_array.push(name_hash)
    end
  return new_array
end

def merge_data(keys,data)

end

def find_cool(array)
  array.each do |initial_hash, name_temp|
    if initial_hash[:temperature] == "cool"
      return [initial_hash]
    end
  end
end
