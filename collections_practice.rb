# sort by asecnding order
def sort_array_asc(array)
   array.sort do |a,b|
    if a == b
        0   # stays in same place, they are equal to each other
    elsif 
        a < b
        -1 # stays in same place, already in order
    elsif
        a > b
        1 # switches elements to be in alpha order
    end
end
end

# sort by descending order, opposite of above
def sort_array_desc(array)
    array.sort do |a,b|
     if a == b
         0   # stays in same place, equal
     elsif 
         a < b
         1 # switches elements 
     elsif
         a > b
         -1 # stays in same place
     end
 end
 end

 # sort by char count
 def sort_array_char_count(array)
    array.sort_by {|count| count.length} # use sort_by in the do block go by the elements length
end

# swap the 2nd and 3rd elements of an array
# def swap_elements(array)
def swap_elements(array)
    array[1], array[2] = array[2], array[1] # simply switching the order by reassigning
    array # call the new array to be returned
end 

# takes in array and returns a copy in reverse order
def reverse_array(array)
    array.reverse # reverse the array
end

# replace the 3rd char. w/ $. Use .each 
def kesha_maker(array)
    array.collect do |element| # goes through each element and returns the mod. array
        element[2] = "$" # at the index 2 for each element reassign it to $
        element # call for the mod. array
    end
end
   
# find and return a, strings in array thay start with a
def find_a(array)
    array.select do |string|
        string.start_with?("a") # ask if string starts with given arg "a"
    end
end

# add together all the int. in array and return the sum
# .inject takes the 1st element and the next then adds them together & so on
def sum_array(array)
    array.inject {|sum, number| sum + number} # inject goes through each element to add each together
end

# add "s" to each word in array EXCEPT for the 2nd element
def add_s(array)
    array.collect.with_index do |element, index|
        if index == 1 # if index is 1, keep it the same
            element
        else
            element + "s" # otherwise, add an "s"
        end
    end
end