function collatz(n, chain, notRecursiveCall=true)
    if notRecursiveCall
        push!(chain, n)
    end
    if n == 1
        return chain
    elseif n % 2 == 0
        n = n / 2
        push!(chain, n)
        collatz(n, chain, false)
    else
        n = (3 * n + 1)
        push!(chain, n)
        collatz(n, chain, false)
    end
    return chain
end

function maxCollatz()
    i = 13
    max = 10
    maxChain = []
    while i <= 1000000
        mainChain = []
        collatz(i, mainChain)
        i += 1
        if length(mainChain) >= max
            max = length(mainChain)
            maxChain = mainChain
        end
    end
    return maxChain[1]
end

println(maxCollatz())

