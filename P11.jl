num = "08022297381500400075040507785212507791084949994017811857608717409843694804566200814931735579142993714067538830034913366552709523046011426924685601325671370236912231167151676389419236542240402866331380244732609903450244753353783684203517125032988128642367102638406759547066183864706726206802621220956394396308409166499421245558056673992697177878968314883489637221362309750076442045351400613397343133957817532822753167159403800462161409535692163905429635314755588824001754243629855786560048357189070544443744602158515417581980816805944769287392138652177704895540045208839735991607975732162626793327986688366887576220720346336746551232639353690442167338253911249472180846293240627636206936417230238834629969826759857404361620733529783190017431497148868116235705540170547183515469169233486143520189196748"
result = [parse(Int, num[i:i+1]) for i in 1:2:(length(num)-1)]

aMat = reshape(result[1:400], 20, 20)
prods = []
A = aMat'

function rowProd(x, y)
    @info "STARTING ROW PROD"
    a = A[x, y] * A[x, y+1] * A[x, y+2] * A[x, y+3]
    println("($x, $y) * ($x, $(y+1)) * ($x, $(y+2)) * ($x, $(y+3))")
    println("ROW PRODUCT = $(a)")
    println()
    push!(prods, a)
end

function colProd(x, y)
    @info "STARTING COLUMN PROD"
    b = A[x, y] * A[x+1, y] * A[x+2, y] * A[x+3, y]
    println("($x, $y) * ($(x+1), $(y)) * ($(x+2), $(y)) * ($(x+3), $(y))")
    println("COLUMN PRODUCT = $(b)")
    println()
    push!(prods, b)
end

function LdiagProd(x, y)
    @info "STARTING L DIAGONAL PROD"
    c = A[x, y] * A[x-1, y+1] * A[x-2, y+2] * A[x-3, y+3]
    println("($x, $y) * ($(x-1), $(y+1)) * ($(x-2), $(y+2)) * ($(x-3), $(y+3))")
    println("L DIAGONAL PRODUCT = $(c)")
    println()
    push!(prods, c)
end

function RdiagProd(x, y)
    @info "STARTING R DIAGONAL PROD"
    d = A[x, y] * A[x+1, y+1] * A[x+2, y+2] * A[x+3, y+3]
    println("($x, $y) * ($(x+1), $(y+1)) * ($(x+2), $(y+2)) * ($(x+3), $(y+3))")
    println("R DIAGONAL PRODUCT = $(d)")
    println()
    push!(prods, d)
end


for j in 1:20
    for i in 1:20
        if j <= 17
            rowProd(i, j)
        end
        if i <= 17
            colProd(i, j)
        end
        if i <= 17 && j <= 17
            RdiagProd(i, j)
        end
        if i >= 4 && j <= 17
            LdiagProd(i, j)
        end
    end
end

println(length(prods))
println(maximum(prods))