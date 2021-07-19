# Starting point for Arrays example file for Learning Julia

# TODO: create an array using [] syntax
arr = [1, 2, 3, 4, 5]
println(arr)
println(typeof(arr)) # why it is not returning Array{Int64, 1} - unidimentional array, but Vector{Int64}
println(length(arr))

# TODO: access an array element - array indexes are 1-based
println("Element at pos 2 is  ", arr[2])

# TODO: arrays can hold different types of values
arr2 = ["one", 2, 3.0, -4]
println(arr2)          # Vector{Int64}
println(typeof(arr2))  # Vector{Any}

# TODO: declare an array with a particular type
# It is Julia convention to put an exclamation point on the names of functions that 
# that directly modify one of their arguments
arr3 = Float64[]
push!(arr3, 1.0, 2.0, 3.0)
println(arr3)

# TODO: populate an array - fill with default values
println("-----")
arr4= zeros(4)
println(arr4)
arr4= ones(4)
println(arr4)
arr5= fill(5,7)
println(arr5)

# TODO: Array sorting using the sort function
println("-----")
newarr = sort(arr, rev = true)
println(newarr)

# TODO: sort! modifies the original array in place
sort!(newarr)
println(newarr)


# TODO: Convert to string with a delimiter
strval = join(arr, "-")
println(strval)
println(typeof(strval))  # String
