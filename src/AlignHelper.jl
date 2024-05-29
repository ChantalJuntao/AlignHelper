module AlignHelper 

# Includes everything for running alignment as a script
# And everything function as actual code?

using ImageCore, ImageTransformations
using AxisArrays, IdentityRanges
using AffineMaps, Rotations


export restrict3, restrict12,
        trimedges,
        MeanTransform,
        MeanNeighbours

include("utils.jl")

end
