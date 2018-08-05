using Gadfly
println("Hello world!")
p(x) = 2x^2 + 1; f(x, y) = 1 + 2p(x)y
println("Hello world!", " I'm on cloud ", f(0, 4), " as Julia supports recognizable syntax!")
plot(x=rand(10), y=rand(10))
plot([sin, cos], 0, 40)
A = rand(3,3) + eye(3)
inv(A)
n=500
l = ["First","Second","Third"]
c = [colorant"yellow",colorant"cyan",colorant"Magenta"]
pl = [layer(x=1:n,y=cumsum(randn(n)),Geom.line,
    Theme(default_color=i)) for i in c]
labels=(Guide.xlabel("Time"),Guide.ylabel("Value"),
    Guide.title("Brownian Motion Trials"),
    Guide.manual_color_key("Legend",l,c))
Gadfly.plot(pl...,labels...)
