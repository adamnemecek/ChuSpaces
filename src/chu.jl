


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
    standard::Chu
end

function Chu(K::Int64, matrix::Matrix, standard::Bool)
    
end
