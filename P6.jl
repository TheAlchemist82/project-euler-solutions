function sumSquareDifference(n)
    nSumSquare = ((n * (n + 1)) / 2)^2
    nSquareSum = ((n * (n + 1) * (2n + 1)) / 6)
    return (nSumSquare - nSquareSum)
end

sumSquareDifference(100)