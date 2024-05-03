using AlignHelper
using Documenter

DocMeta.setdocmeta!(AlignHelper, :DocTestSetup, :(using AlignHelper); recursive=true)

makedocs(;
    modules=[AlignHelper],
    authors="Chantal Chen <juntao.chen@wustl.edu> and contributors",
    sitename="AlignHelper.jl",
    format=Documenter.HTML(;
        canonical="https://ChantalJuntao.github.io/AlignHelper.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ChantalJuntao/AlignHelper.jl",
    devbranch="master",
)
