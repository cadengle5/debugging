# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    r = num..0
    (r.first).downto(r.last).each do |number|
        if prime?(number) == true
            if num % number == 0
                return number
            end
        end
    end
end
    
def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

###########################

# Iterate over each char and keep a count of how many times that char is used. 
def unique_chars?(string)
    seen = []
    string.each_char do |char|
        if seen.include?(char)
            return false
        end
        seen << char
    end
    true
end

#############################

def dupe_indices(arr)
    hash = Hash.new { |h, k| h[k] = [] }

    arr.each_with_index { |ele, i| hash[ele] << i}

    hash.select { |ele, i| i.length > 1}
end

############################

def ana_array(arr_1, arr_2)
    arr_1.each do |ele|
        if arr_2.none?(ele)
            return false
        end
    end
    arr_2.each do |ele|
        if arr_1.none?(ele)
            return false
        end
    end
    true
end
        
