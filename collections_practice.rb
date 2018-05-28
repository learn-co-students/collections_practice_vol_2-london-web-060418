def begins_with_r(array)
  array.all? do |word|
    word.chr == "r"
  end 
end

def contain_a(array)
  array.select do |element| 
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with? ("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  array.each do |element|
    count(element)
  end
end

def count_elements(array)
  names = array.uniq

  names.map do |name| 
    name.merge({ :count => array.count { |item| item[:name] == name[:name] }})
  end
end

def merge_data(keys, data)
  keys.map do |key|
    key.merge(data[0][key[:first_name]].to_h)
  end
end

def find_cool(array)
  array.select { |item| item[:temperature] == "cool" }
end

def organize_schools(schools)
  locations = schools.values.flat_map(&:values).uniq
  nyc = schools.select { |school, loc| loc[:location] == "NYC" }.keys
  sfo = schools.select { |school, loc| loc[:location] == "SF" }.keys
  chi = schools.select { |school, loc| loc[:location] == "Chicago" }.keys
  sorted_schools = [nyc, sfo, chi]

  locations.zip(sorted_schools).to_h
end
