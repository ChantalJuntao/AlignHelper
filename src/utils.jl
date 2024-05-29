function restrict3(x)
    return restrict(restrict(restrict(x)))
end

"""
    restrict12(3, image)

Restricts a 3D image 3 times across first and second dimension

# Examples
```julia-repl
julia> A = ones(16,16,2)
16×16×2 Array{Float64,3}:
[:, :, 1] =
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0

[:, :, 2] =
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0
 1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0  1.0

julia> restrict12(3,A)
3×3×2 Array{Float64,3}:
[:, :, 1] =
 0.25  0.5  0.25
 0.5   1.0  0.5
 0.25  0.5  0.25

[:, :, 2] =
 0.25  0.5  0.25
 0.5   1.0  0.5
 0.25  0.5  0.25

```
"""
function restrict12(n::Int, a::AbstractArray)
    for i = 1:n
        a = restrict(a, [1,2])
    end
    return a
end

"""
    trimedges(axes(image),n)

Cleans up edge artifacts of images with axes.

# Examples
```julia-repl
axsinner = map(r->trimedges(r, 3), axes(fixed))
fixed = fixed[axsinner...]
```
"""
trimedges(r, n) = IdentityRange(first(r)+n:last(r)-n)

################################################################################

"""
    MeanTransform(tforms::Array{AffineMap,1})

Calculates the mean of an array of transformations

"""
function MeanTransform(tforms::Array) #TODO currently only works with qd_rigid. make this more eltype flexible
    #??? mathematical basis?
    lin = Float64[];
    push!(lin, mean(map(x->Quat(x.linear).w, tforms)))
    push!(lin, mean(map(x->Quat(x.linear).x, tforms)))
    push!(lin, mean(map(x->Quat(x.linear).y, tforms)))
    push!(lin, mean(map(x->Quat(x.linear).z, tforms)))
    trans = Float64[];
    for i in 1:3
        push!(trans, mean(map(x->x.translation[i], tforms)))
    end
    return AffineMap(RotMatrix(Quat(lin...)), SArray{Tuple{3},Float64,1,3}(trans))
end
# function MeanTransform(tforms::Array{AffineMap,1})
#     #change this to use quarternions instead.
#     lin = Float64[];
#     push!(lin, mean(map(x->RotXYZ(x.linear).theta1, tforms)))
#     push!(lin, mean(map(x->RotXYZ(x.linear).theta2, tforms)))
#     push!(lin, mean(map(x->RotXYZ(x.linear).theta3, tforms)))
#     trans = Float64[];
#     for i in 1:3
#         push!(trans, mean(map(x->x.translation[i], tforms)))
#     end
#     return AffineMap(RotXYZ(lin...), SArray{Tuple{3},Float64,1,3}(trans))
# end

"""
    MeanNeighbours(number::Int, window::Int)

Replaces an miscalculated transformation with the mean of it's neighbours.

"""
function MeanNeighbours(tformArray::Array, c::Int, w::Int)
    MeanTransform(tformArray[filter(i-> i!=c, (c-w):1:(c+w))])
end


# """
#     warp_check(image, transformation, orig)

# Shows a color overlaid image warped by an transformation, and an unwarped image.
# Remind me to figure out how to put in a second transformation.
# Make sure the axis match.

# # Examples
# ```julia-repl
# julia> warp_check(imageStack[:,:,:,225], tformArray[225], fixedImage)
# #outputs color view image
# ```
# """
# function warp_check(img, tfm, orig)
#     imgw = warp(Float32.(img), tfm, axes(img))
#     imshow(colorview(RGB, orig, zeroarray, imgw))
# end
