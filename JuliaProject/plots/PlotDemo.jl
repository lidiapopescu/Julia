import Pkg; Pkg.add("Plots")
import Pkg; Pkg.add("PyPlot")
#using PyPlot
using Plots
#ion()

#x = 1:10; y = rand(10); # These are the plotting data
x = 1:10; y = rand(10, 2) # 2 columns means two lines
plot(x, y)
println("Done")
