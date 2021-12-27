def stock_picker(arr)
    mp = arr[0]        
    mi = 0
    prof = 0
    day = [0, 0]
    arr.each_with_index do |p, i|
        if p < mp
            mp = p
            mi = i
        end
        
        if p - mp > prof
            prof = p - mp
            day = [mi, i]
        end    
    end
    day    
end    