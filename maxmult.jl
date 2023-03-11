#S takes values in [0,1]
struct S <: Real
    val::Real
    function S(v::Real)
        if !(0 <= v <= 1)
            throw(ArgumentError("value must be between 0 and 1"))
        end
        new(v)
    end
end

#This implements a max-mult semiring structure over S.
Base.:+(a::S, b::S) = S(max(a.val,b.val))
Base.:*(a::S, b::S) = S(a.val * b.val)

