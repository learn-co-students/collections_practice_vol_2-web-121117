#require "pry"

def begins_with_r(array)
  array.each do |item|
    if item.split('').first != 'r'
      return false
    end
  end
  true
end

def contain_a(array)
  output = []
  array.select do |item|
    if item.split('').include?('a')
      output << item
    end
  end
end

def first_wa(array)
  array.each do |word|
    if word[0..1] == 'wa'
      return word
    end
  end
end

def remove_non_strings(array)
  array.select do |item|
    item.is_a?(String)
  end
end

def count_elements(array)
  count_array = []
  array.uniq.each do |item|
    count = 0
    array.each do |current|
      if item[:name] == current[:name]
        count += 1
      end
    end
    #binding.pry
    count_array << {:name => item[:name], :count => count}
  end
  count_array
end

def merge_data(keys, data)
  output = []
  keys.each do |names|
    names.each do |name_key, name|
      output << {name_key => name}
      count = 0
      data[0].each do |person, info|
        #binding.pry
        if person == name
          info.each do |k, v|
            output[count][k] = v
          end
        end
        count += 1
      end
    end
  end
  output
end

def find_cool(cool)
  output = []
  cool.each do |hash|
    if hash[:temperature] == "cool"
      output << hash
    end
  end
  output
end

def organize_schools(schools)
  output = {}
  schools.each do |school, school_data|
    output[school_data[:location]] = []
  end
  schools.each do |school, school_data|
    output[school_data[:location]] << school
  end
  output
end
