# your code goes here
def begins_with_r(array)
  array.all? { |el| el.start_with?("r")  }
end

def contain_a(array)
  array.select { |el| el.include?("a")  }
end

def first_wa(array)
  array.find { |el| 
    if el.is_a? String
      el.start_with?("wa")  
    end
  }
end

def remove_non_strings(array)
  array.select {|el| el.is_a? String}
end

def count_elements(array)
  counted_array = []
  array.each { |item|
    num_of_occurances = array.count(item)
    item_with_count = item.clone
    item_with_count[:count] = num_of_occurances
    counted_array.push(item_with_count)
  }
  counted_array.uniq
end

def merge_data(keys,data)
 data.each {|data_item|
  return data_item.values.map.with_index {|v, i| keys[i].merge(v)}
 }
end

def find_cool(cool)
  cool_arr = []
  cool.each { |item|
    if item[:temperature] == "cool"
      cool_arr.push(item)
    end
  }
  cool_arr
end

def organize_schools(schools)
  organized_hash = {}
  print schools
  schools.each do |school, location_hash|
    location_key = location_hash[:location]
    if(organized_hash.key?(location_key))
      organized_hash[location_key].push(school)
    else
      organized_hash[location_key] = []
      organized_hash[location_key].push(school)
    end
  end

 organized_hash
end