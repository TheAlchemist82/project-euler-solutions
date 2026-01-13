
n_rows = 15  # Example size
A = zeros(Int, n_rows, n_rows) # Initialize with zeros [4]
source_data = [75, 95, 64, 17, 47, 82, 18, 35, 87, 10, 20, 04, 82, 47, 65, 19, 01, 23, 75, 03, 34, 88, 02, 77, 73, 07, 63, 67, 99, 65, 04, 28, 06, 16, 70, 92, 41, 41, 26, 56, 83, 40, 80, 70, 33, 41, 48, 72, 33, 47, 32, 37, 16, 94, 29, 53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14, 70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57, 91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48, 63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31, 04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23]
k = 1 # Pointer for source_data

for i in 1:n_rows
    for j in 1:i  # Inner loop only goes up to the row number
        if k <= length(source_data)
            A[i, j] = source_data[k]
            global k += 1
        end
    end
end

rows = 15
newA = []
for k in rows:-1:2
    global rows, cols = size(A)
    row1 = A[k:k, :]
    row2 = A[k-1:k-1, :]
    A[k-1, :] = row1 + row2

    global newA = A[1:end.!=k, :]
    println(newA)
    println()
end

println(newA)
