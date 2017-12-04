def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
    new_array = []

    array.each do |word|
      new_array << word if word.include?("a")
    end
    new_array
end

def first_wa(array)
  first_wa = nil
  array.each do |word|
    if word.match(/wa/)
      first_wa = word
      break
    end
  end
  first_wa
end

def remove_non_strings(array)
  string_only = []

  array.each do |word|
    string_only << word if word.is_a?(String)
  end
  string_only
end

def count_elements(array)
  count = Hash.new(0)
  array.each do |item|
    count[item[:name]] += 1
  end
  count

  new_array = []
  count.map do |key, value|
    hold = {}
    hold[:name] = key
    hold[:count] = value
    new_array << hold
  end
  new_array
end

def merge_data(keys, data)
  new_array = []

  keys.each do |individual|
    name = individual[:first_name]
    data.each do |information|
      if information[name]
        person = information[name]
        person[:first_name] = name
        new_array << person
      end
    end
  end
  new_array
end

def find_cool(array)
  new_array = []
  array.each do |word|
    new_array << word if word[:temperature] == "cool"
  end
  new_array
end

def organize_schools(array)
  organized_list = {}

  array.each do |school, location|
    if organized_list[array[school][:location]].nil?
      organized_list[array[school][:location]] = [school]
    else
      organized_list[array[school][:location]] << school
    end
  end
  organized_list
end

#def organize_schools(schools)
#    organized_schools = {}
#    schools.each do |name, location_hash|
#        location = location_hash[:location]
#        if organized_schools[location]
#            organized_schools[location] << name
#            else
#            organized_schools[location] = []
#            organized_schools[location] << name
#       end
#    end
#    organized_schools
#end


#def count_elements(array)
#    array.each do |original_hash|
#        original_hash[:count] = 0
#        name = original_hash[:name]
#        array.each do |hash|
#            if hash[:name] == name
#                original_hash[:count] += 1
#            end
#        end
#    end.uniq
#end

#def merge_data(keys, values)
#    container = []
#    keys.each do |person_name|
#        name = person_name[:first_name]
#        values.each do |person_data|
#            if person_data[name]
#                merged_person = person_data[name]
#                merged_person[:first_name] = name
#                container << merged_person
#            end
#        end
#    end
#    container
#end
