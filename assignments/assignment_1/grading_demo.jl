@assert length(ARGS) == 1
filename = ARGS[1]
valid_filenames = ["dingel.jl", "weinstein.jl"]
@assert filename in valid_filenames "Invalid filename: must be one of $(valid_filenames)."

import Pkg
Pkg.activate(".")
using Random, Distributions, LinearAlgebra

## Run student's script
include("$(filename)")

## Negative σ check
junk_matrix =rand(10,11) .- 0.1; junk_vector = rand(9); σ = -0.5;
σ = 4.0;

try
		Armington_solver(junk_vector, junk_vector, junk_matrix, σ)
catch e
    if isa(e, AssertionError)
        println("Script caught the invalid arguments: ", e.msg)
    else
        throw(e)  # Re-throw unexpected errors
    end
end

## Speed check
dime = 100;
Random.seed!(1234)
A = rand(dime); L = ones(dime); tau = 1.0 .+ rand(LogNormal(0.0,1.0),dime,dime); for i in 1:dime; tau[i,i] = 1.0; end
σ = 8.0;
timing_result = @timed Armington_solver(A, L, tau, σ)
@assert !isapprox(timing_result.value ./ timing_result.value[1], ones(dime))  # Do not accept a vector of ones as the result
println("The speed test of dimension ",size(tau)," for $(filename) was ",timing_result.time, " seconds")
println("The first nine wages of this example are: ",timing_result.value[1:9] ./ timing_result.value[1])
