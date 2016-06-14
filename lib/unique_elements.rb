# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)

i = 0
elemarr = Array.new
arrsize = arr.size

while i < arrsize
    
    elemarr[0] = arr[i]
    difarr = arr - elemarr 
    lengthdiff = arr.length - difarr.length
    #print lengthdiff
    
    if lengthdiff == 1
        i = i + 1
    else
        arr.delete_if{ |x| x == arr[i] }
        arrsize = arr.size
        i = 0
    end
    
    
end

return arr

end


#arr - otherarr = new array with elem existing in arr that exist in otherarr are removed