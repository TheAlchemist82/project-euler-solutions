function largestPalindromeProduct()
    palindrome = []
    for i in 1:999
        for j in 1:999
            if digits(i * j) == reverse(digits(i * j))
                push!(palindrome, (i * j))
            end
        end
    end
    return maximum(palindrome)
end

println(largestPalindromeProduct)
