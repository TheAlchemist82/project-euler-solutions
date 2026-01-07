function countPrimes()
    primes = [2]
    for i in 3:1.1e5
        temp = []
        for k in 2:i-1
            push!(temp, k)
        end
        if !(0 in i .% temp)
            push!(primes, i)
        end
    end
    return println(primes[10001])
end

#At first, I thought of using Sieve of Eratosthenes, however the algorithm returns all prime numbers from 2 to n rather than returning the first n primes.
#So instead of using this algorithm, I seperated both n, and the number of iterations, so the function runs for an arbitrarily large number and returns the fist n primes it finds.
#The runtime of the function was a little over 1400 seconds. 