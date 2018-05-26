# your code goes here
require 'pry'

def begins_with_r(array)
  res = true
  array.each do |x|
    if x.each_char.first != "r"
      res = false
    end
  end
  return res
end

def contain_a(array)
  array.select do |x|
    x.include?("a")
  end
end

def first_wa(array)
  array.find do |x|
    x[0] + x[1] == "wa"
  end
end

def remove_non_strings(array)
  array.select! do |x|
    x.class == String
  end
end

def count_elements(array)
  countarray = array.uniq
  countarray.each do |x|
    x[:count] = 0.to_i
  end
  countarray.each do |x|
    array.each do |y|
      x[:count] += 1 if x[:name] == y[:name]
    end
  end
  return countarray
end

def merge_data(keys, data)
  result = []
  keys.flatten!
  data.flatten!
  keys.each_with_index do |x, y|
    result[y] = x
  end
  result.each do |x|
    person = x[:first_name]
    info = data[0][person]
    x.merge!(info)
  end
  return result
end

def find_cool(cool)
  cool.flatten!
  cool.select do |x|
    x.has_value?("cool")
  end
end

def organize_schools(schools)
  orgschools = Hash.new([])
  schools.each_key do |x|
    location = schools[x][:location]
    orgschools[location] += [x]
  end
  return orgschools
end