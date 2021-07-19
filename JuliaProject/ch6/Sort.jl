# Starting sorting example for Learning Julia

arr1 = [2, 8, -3, -15, 5, -7, 9, 0, 11]

# TODO sort the data by a simple transformation
result = sort(arr1, by = abs) # apply absolute value to each item from array for sorting
# however itself is not changed, but was treated as positive for purpose of sorting
println(result)               # [0, 2, -3, 5, -7, 8, 9, 11, -15]
println(issorted(arr1))
println(issorted(result))
println()

# TODO check to see if an array is already sorted
arrtup = [(1, 2), (2, 1), (3, 5), (4, 0)]
#result = sort(arrtup)
#println(result)
println( issorted(arrtup))
println( issorted(arrtup, by = x -> x[1] ))
# using 'by' parameter to specify a lambda inline function
# X such that  X returns the first value in the array
# -> the sort look at each of this Tuples -> items.
# For each item take a look at the first in that tuple
# This already happens by default, without 'by', but good to know
println(" -- 2nd sample -- ")
println( issorted(arrtup, by = x -> x[2] ))
result = sort(arrtup, by = x -> x[2] )
println(result)
println( issorted(result, by = x -> x[2] ))
  
# Sorting custom types
struct MyRectangle
    length::Int
    width::Int
end

arr2 = [MyRectangle(12, 22), MyRectangle(10, 18), MyRectangle(7, 12), MyRectangle(9, 30)]

# TODO declare a custom sorting function
function comparearea(rect1::MyRectangle, rect2::MyRectangle)
  area1 =  rect1.length * rect1.width
  area2 =  rect2.length * rect2.width
  area1 < area2
end

# sort!(v; alg::Algorithm=defalg(v), lt=isless, by=identity, rev::Bool=false, order::Ordering=Forward)
#  the lt keyword allows providing a custom "less than" function;
#
# LT gives me a way to specify a function that will perform a less than comparison so that data items can be compared.
# For each item in the array my comparearea function will be invoked to see which one is smaller than the next
sort!(arr2, lt =  comparearea)
println(arr2)
