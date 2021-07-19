# Starting string processing example for Learning Julia


# TODO: simple string operations - length, size
mystr = "Ångström"
teststr = "jμΛIα" # test string with some Greek characters
println("String length: ", length(mystr))  # Return the number of elements in the collection.
println("Size of string: ", sizeof(mystr)) # Size, in bytes 
println("String length: ", length(teststr))
println("Size of string: ", sizeof(teststr))
  
# TODO: concatenation and repetition operators
teststr = "Hello " * "World"
println(teststr)

teststr = "ABCD" ^ 3  # hat operator
println(teststr)

# TODO: search for substrings
teststr = "Julia programming is awesome"
println(findnext("Julia", teststr, 1))
println(occursin("some", teststr))

# TODO: pad strings either left or right
# Stringify s and pad the resulting string on the left with p to make it n characters (code points) long. 
# If s is already n characters long, an equal string is returned. Pad with spaces by default.
teststr = lpad("Test String", 20)          # left padding to take a total of 20 spaces
println(teststr)
teststr = rpad("Test String", 20 , '*')    # right padding with '*' default character to use instead of spaces
println(teststr)

teststr = "Julia programming is awesome"
println(lpad(teststr, length(teststr)+5, '@'))   # @@@@@Julia programming is awesome

# TODO: create a string from an array
# join([io::IO,] strings [, delim [, last]])
# Join an array of strings into a single string, inserting the given delimiter (if any) between adjacent strings. 
# If last is given, it will be used instead of delim between the last two strings. 
arr = ["Lions","Tigers","Bears"]
teststr = join(arr, ", ", " and ")   # and - the value to insert between the last two values
println(teststr)
