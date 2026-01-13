function sumTriangle(x)
    notFound = true
    i = 1
    while notFound
        divisors = []
        nSum = (i * (i + 1)) / 2
        for k in 1:Int(floor(nSum^0.5))
            if nSum % k == 0
                push!(divisors, k)
                if nSum / k != k
                    push!(divisors, nSum / k)
                end

            end
        end
        if length(divisors) >= x
            notFound = true
            return nSum
        else
            i += 1
        end
    end

end


println(sumTriangle(500))