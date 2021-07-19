# Starting file system example for Learning Julia

# TODO get the current workding dir
print("Current working directory: ")
println(pwd())


# TODO read the contents of the current directory
print("Current directory contents: ")
println(readdir())

filename = "mytestfile.txt"
# TODO open a file for writing
function createafile(filename::String, text::String = "This is some text")
  io  = open(filename, "w") # creates if missing with Write permissions
  write(io, text)
  close(io)
end
#createafile(filename, "Hello world!")
#createafile(filename, "123")

# TODO open a file for reading
function readafile(filename::String)
  io = open(filename, "r")
  content =  read(io, String)
  println(content)
  println(typeof(content))
end
#readafile(filename)

# TODO append data to an existing file
function appendtoafile(filename::String, text::String)
  io = open(filename, "a")
  write(io, text)
  close(io)
end
#appendtoafile(filename, "\nThis text was added.")
#readafile(filename)

# TODO rename an existing file
function renameafile()
  mv(filename, "NewFileName4.txt", force=true)   # ERROR: LoadError: IOError: unlink("mytestfile.txt"): resource busy or locked (EBUSY)
end
renameafile()

# TODO delete a file
rm("NewFileName4.txt") # ERROR: LoadError: ArgumentError: 'NewFileName.txt' exists. `force=true` is required to remove 'NewFileName.txt' before moving.

