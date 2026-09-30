using Documenter
using Literate

function ignore_code_blocks(content)
    content = replace(content, "##\n" => "\n")  # remove code blocks
    #content = replace(content, "###" => "##")  # make level 3 headers level 2
end

#Literate.markdown("./docs/src/1_introduction_computational.jl", "./docs/src/", preprocess=ignore_code_blocks)
#Literate.markdown("./docs/src/2_equations_computational.jl", "./docs/src/", preprocess=ignore_code_blocks)
#include("./src/assets/4_eos2/MB_versus_degenerate.jl")
#include("./src/assets/4_eos2/polytrope_plot.jl")
#include("./src/assets/7_nucleo1/gamow.jl")

makedocs(sitename="Stellar Structure and Evolution",
        pages= ["index.md",
                "Introduction (23/09/26)" => ["Notes" => "1_introduction.md",
                                              "Exercises"=>"1_introduction_problems.md"],
                "EOS (reading material)" => "2_eos_reading.md",
                "EOS part I (30/09/26)" => ["Notes" => "2_eosI.md",
                                            "Exercises"=>"2_eosI_problems.md"],
                ],
    repo = "github.com/orlox/stars_2026_2027.git")

deploydocs(
    repo = "github.com/orlox/stars_2026_2027.git",
)
