function letterToNumber(n)
    onesWords = Dict(0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety")
    tensWords = Dict(10 => "ten", 100 => "hundred", 1000 => "thousand")

    numDigits = reverse(digits(n))

    if length(numDigits) == 1
        return onesWords[n]

    elseif length(numDigits) == 2
        if numDigits[2] == 0
            return "$(onesWords[numDigits[1]*10])"
        elseif numDigits[1] != 1
            return "$(onesWords[numDigits[1] * 10])$(onesWords[numDigits[2]])"
        else
            return onesWords[n]
        end

    elseif length(numDigits) == 3
        if n == 100
            return "onehundred"
        elseif numDigits[2] == 0 && numDigits[3] == 0
            return "$(onesWords[numDigits[1]])$(tensWords[100])"
        elseif numDigits[2] == 0
            return "$(onesWords[numDigits[1]])$(tensWords[100])and$(onesWords[numDigits[3]])"
        elseif numDigits[2] == 1 || numDigits[3] == 0
            return "$(onesWords[numDigits[1]])$(tensWords[100])and$(onesWords[numDigits[2] * 10 + numDigits[3]])"
        else
            return "$(onesWords[numDigits[1]])$(tensWords[100])and$(onesWords[numDigits[2] * 10])$(onesWords[numDigits[3]])"
        end

    elseif length(numDigits) == 4
        if n == 1000
            return "onethousand"
        elseif numDigits[2] == 0 && numDigits[3] == 0
            return "$(onesWords[numDigits[1]])$(tensWords[1000])and$(onesWords[numDigits[4]])"
        elseif numDigits[2] == 0
            return "$(onesWords[numDigits[1]])$(tensWords[1000])and$(onesWords[numDigits[3]*10])"
        elseif numDigits[3] == 1 || numDigits[4] == 0
            return "$(onesWords[numDigits[1]])$(tensWords[1000])$(onesWords[numDigits[2]])$(tensWords[100])and$(onesWords[numDigits[3]*10 + numDigits[4]])"
        else
            return "$(onesWords[numDigits[1]])$(tensWords[1000])$(onesWords[numDigits[2]])$(tensWords[100])and$(onesWords[numDigits[3] * 10])$(onesWords[numDigits[4]])"
        end
    end
end

count = 0
for i in 1:1000
    println(letterToNumber(i))
    println(length(letterToNumber(i)))
    println()
    global count += length(letterToNumber(i))
end

println(count)
