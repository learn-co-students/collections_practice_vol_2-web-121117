require 'pry'

def begins_with_r(array)
  array.each do |x|
    if !x.start_with?("r")
      return false
    end
  end
  true
end

def contain_a(array)
  newarray = []
  array.each do |x|
    if x.include?("a")
      newarray << x
    end
  end
  newarray
end

def first_wa(array)
  array.find do |x|
    x.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.class != String
  end
end

def count_elements(array)
  newarray = []
  array.each do |hash|
    if array.include?(hash)
      hash[:count] = array.count(hash)
      newarray << hash
    end
    array.delete_if {|x| x == hash}
  end
  newarray
end


def merge_data(keys, data)
  merged = []
  keys.each do |hash|
    data.each do |stats|
      stats.each do |names, values|
        if hash[:first_name] == names
          merged << hash.merge(values)
        end
      end
    end
  end
  merged
end

def find_cool(array)
  coolhash =[]
  array.each do |hash|
    if hash[:temperature] == "cool"
      coolhash << hash
    end
  end
  coolhash
end

def organize_schools(schools)
  organized = {}
  schools.each do |school, lochash|
    if !organized.include?(lochash[:location])
      organized[lochash[:location]] = []
    end
    organized[lochash[:location]] << school
  end
  organized
end
