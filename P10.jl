function sieve(n)
    primes = fill(1, n)
    for i in 2:Int(floor(n^0.5))
        if primes[i] == 1
            for j in i^2:i:n
                primes[j] = 0
            end
        end
    end
    return sum([k for k in 2:n if primes[k] == 1])
end

sieve(2000000)