require 'pry'

def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  newArray = []
  array.each do |word|
    if word.include?("a")
      newArray.push(word)
    end
  end
  newArray
end

def first_wa(array)
  array.each do |word|
    if word[0] == "w"
      if word[1] == "a"
        return word
      end
    end
  end
end

def remove_non_strings(array)
  newArray = []
  array.each do |element|
    if element.class == String
      newArray.push(element)
    end
  end
  newArray
end

# def count_elements(array)
#   newArray = []
#   array.each do |obj|
#     newArray.push(obj)
#       #if newArray.length > 0
#         newArray.each do |obj|
#           if obj.include?(:count)
#             obj[:count] += 1
#           else
#             obj[:count] = 1
#           end
#           binding.pry
#         end
#       #end
#   end
#   newArray.uniq
# end

def count_elements(array)
  newArray = []
  array.each do |obj|
    newArray.push(obj)
    obj[:count] = 0
      #if newArray.length > 0
        newArray.each do |obj|
          if obj.include?(:count)
            obj[:count] += 1
          else
            obj[:count] = 1
          end
          #binding.pry
        end
      #end
  end
  newArray.shift
  return newArray
end

def merge_data(keys, data)
array = []
keys.each do |key|
  data.each_with_index do |info, i|
    #binding.pry
    array.push(key.merge(info[key[:first_name]]))
    end
  end
  array
end

def find_cool(array)
  newArray = []
  array.each_with_index do |ele, i|
    ele.values.each do |isItCool|
      #binding.pry
      if isItCool == "cool"
        newArray.push(array[i])
      end
    end
  end
  return newArray
end

def organize_schools(schools)
  organized = {}
  schools.each_with_index do |school, i|
    #binding.pry
    if organized.include?(school[1][:location])
      organized[school[1][:location]].push(school[0])
    else
      organized[school[1][:location]] = Array.new
      organized[school[1][:location]].push(school[0])
    end
  end

  return organized
end
