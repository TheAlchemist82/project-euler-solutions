function primeFactors(n)
    factors = []
    for i in 2:Int(floor(n^(0.5)))
        if n % i == 0
            push!(factors, i)
        end
        while (n % i == 0)
            n = n / i
        end
    end
    return factors
end

primeFactors(600851475143)