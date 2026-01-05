function evenFibonacci(r)
    sum = 0
    x, y = 0, 1
    for i in 1:r
        x, y = y, x + y
        if 0 < x < r && x % 2 == 0
            sum += x
        end
    end
    return sum
end

evenFibonacci(4000000)