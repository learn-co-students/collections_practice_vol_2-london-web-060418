# your code goes here

require "pry"

def begins_with_r(tools_array)
  tools_array.each { |el| if(!(el.downcase).start_with?("r")) then return false end }
  return true
end

def contain_a(array)
  return array.select { |str| str.include?("a") }
end

def first_wa(array)
  return array.find { |element| (element.to_s).start_with?("wa") }
end

def remove_non_strings(array)
  return array.delete_if {|element| !element.is_a?(String)}
end

def count_elements(array)
  count_hash = {

  }

  array.each do |hash_element|
    if(count_hash.key?(hash_element[:name]))
      count_hash[hash_element[:name]][:count] += 1
    else
      count_hash[hash_element[:name]] = {}
      count_hash[hash_element[:name]][:count] = 1
    end
  end

  count_arr = []
  count_hash.each do |key, value|
    count_arr << {:name => key, :count => value[:count] }
  end

  return count_arr

end

def merge_data(first_ds, second_ds)
  arr = []
  first_ds.map do |first_ds_item|
    key_name = first_ds_item[:first_name]
    second_ds.each do |second_ds_item|
      if(second_ds_item.key?(key_name))
        arr << first_ds_item.merge(second_ds_item[key_name])
      end
    end
  end
  return arr
end


def find_cool(hash_arr)
  return hash_arr.select { |hash| hash[:temperature] == "cool" }
end

def organize_schools(school_collection)
  organized_school_hash = {}
  school_collection.each do |key, value|
    location_key = value[:location]
    if(organized_school_hash.key?(location_key))
      organized_school_hash[location_key] << key
    else
      organized_school_hash[location_key] = []
      organized_school_hash[location_key] << key
    end
  end

  return organized_school_hash
end
