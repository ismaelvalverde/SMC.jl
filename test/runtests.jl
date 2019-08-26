using Test
using ModelConstructors, SMC, DSGE
using LinearAlgebra, PDMats, Distributions
using Printf, Distributed, Random, HDF5, FileIO, JLD2

my_tests = [
            "smc",
            "helpers",
            "initialization",
            "resample",
            "util",
            "mutation"
            ]

for test in my_tests
    test_file = string("$test.jl")
    @printf " * %s\n" test_file
    include(test_file)
end
