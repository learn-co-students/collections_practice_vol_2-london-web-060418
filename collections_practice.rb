def begins_with_r(array)
  array.all? {|word| word[0] == "r"}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.detect {|word| word[0..1] == "wa"}
end

def remove_non_strings(array)
  array.reject {|element| element.class != String}
end

def count_elements(array)
  compare_array = array.uniq
  compare_array.each do |x|
    count = 0
    array.each do |y|
      if x == y
        count += 1
      end
    end
    x[:count] = count
  end
  compare_array
end

# def merge_data(array1,array2)
#   merged_data = []
#
#   array1.each do |mandem|
#     name = mandem[:first_name]
#     array2.each do |info|
#       if info[name]
#         merged = info[name]
#         merged[:first_name] = name
#         merged_data << merged_person
#       end
#     end
#   end
#
#   merged_data
# end

def merge_data(array1, array2)
  keys.collect do |name|
    name.merge(data[0][name[:first_name]])
  end
end

# def find_cool(array)
#   cool_array = []
#   array.each do |element|
#     if element[:temperature] == "cool"
#       cool_array << element
#   end
# end
#   cool_array
# end

def find_cool(array)
  array.select {|word| word[:temperature] && word[:temperature] == "cool"}
end

def organize_schools(hash)
  organised = {}
hash.each do |name, location_hash|
  location_hash.each do |key, location|
    if organised[location] == nil
      organised[location] = []
      organised[location] << name
    else
      organised[location] << name
    end
  end
end

  organised
end
