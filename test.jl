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
h(n)=[1/(i+j+1) for i=1:n,j=1:n]
H=h(15)
setrounding(Float64,RoundNearest) do
    inv(H)[1,1]
end
setrounding(Float64,RoundUp) do
    inv(H)[1,1]
end
rand(1,2,1)
[1 2;3 4]
[true;false]
dump(h)
a = [eye(2) for i=1:2]
function prefix{T}(w::Vector{T})
    for i=2:size(w,1)
        w[i]+=w[i-1]
    end
    w
end
x = ones(1_000_000)
@time prefix(x)
y = ones(1_000_000) + im*ones(1_000_1000)
@time prefix(y)
f(a,b) = a+b
@code_native f(2,3)
