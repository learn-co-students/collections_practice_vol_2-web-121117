def begins_with_r(array)
  array.all? do |i|
    i.start_with?("r")
  end
end

def contain_a(array)
  output=[]
  array.each do |i|
    if i.include?("a")
      output << i
    end
  end
  output
end

def first_wa(array)
  array.find do |i|
    if i.is_a?(String)
    i.start_with?("wa")
    end
  end
end

def remove_non_strings(array)
  array.delete_if do |i|
    !i.is_a?(String)
  end
end

def count_elements(array)
  output=[]
  array.each do |i|
    output << [i, array.count(i)]
    array.delete_if(i)
  end
  output
end

def merge_data(arr1,arr2)
  arr1.concat(arr2)
end
