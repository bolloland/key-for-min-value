# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
#iterate over has and return the **KEY**  (use  .each) finds smalles value
# so if 2 < 6
    numbers_array = []    ## lets collect all the numbers(values) in this array
    name_hash.each do |name, number|
    numbers_array << number        #hopefully the name still opens(keys?) the number
    end

    lowest = numbers_array[0]  ##[500, 2, 1] not there yet
     numbers_array.each do |x|
        if x < lowest            #iterate thru my numbers_array,                 
            lowest = x    #if  2 < 500 (which it is), 2 now becomes my lowest value
        end
    end
#now i need to connect numbers_array[0] to value
# what's the key if numbers_array[0] == value?
    name_hash.each do |name, number|
    if number == lowest 
        return name 
    end
    end
  nil     
end
