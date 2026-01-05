
function oddSumBelow(n)
    count = 0

    for i in 0:3:n-1
        println(i)
        count += i
    end
    for i in 0:5:n-1
        println(i)
        count += i
    end
    for i in 0:15:n-1
        println(i)
        count -= i
    end

    return count

end

println(oddSumBelow(1000))