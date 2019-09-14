
abstract type Conformable end

struct Context
    k::Int64
    standardization::Bool
end


struct Chu
    # A Chu space is a matrix with entries drawn from
    # a set of some finite size K.  The members of the
    # set are represented by numbers in [0,K-1].
    K::Int64
    matrix::Matrix

    # standardized version of this space
    standard::Matrix
end

Chu(K::Int64, matrix::Matrix, standard::Bool) = Chu(K, matrix, standard ? matrix : nothing)

"""
    Builds tensor unit.
"""
Chu(size::Int) = Chu(size, collect(1:size), true)

dual(s::Chu) = Chu(s.K, s.matrix', isnothing(s.standard))

function conform(ctx::Context)::Chu

end

function rowtree(c::Chu)

end

function coltree(c::Chu)

end

@inline Base.size(c::Chu) = size(c.matrix)


function choice(a::Chu, b::Chu)
    K = max(a.K, b.K)
    size = size(a) .+ size(b)

end
