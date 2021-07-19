# Starting custom types example file for Learning Julia

# TODO Create a new custom type using the struct keyword
struct MyType 
	field1::Int
	field2::String
end

# TODO instantiate the type
x = MyType(10, "ABC")
println(x)
println(x.field1)

# By default types are imutable, once set can not be changed
#x.field1= 20  #  LoadError: setfield! immutable struct of type MyType cannot be changed

# TODO use "mutable" to make a type that can be altered
mutable struct MyMutableType 
	field1::Int
	field2::String
end

x = MyMutableType(10, "ABC")
println(x)
println(x.field1)
x.field1= 20 
x.field2="DEF"
println(x.field1)
println(x.field2)
println(x)

# TODO use the isa() method to see if a variable is a given type
println(isa(x, MyMutableType))
println(isa(x, MyType))
