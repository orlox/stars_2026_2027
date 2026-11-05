using Documenter
using Literate

function ignore_code_blocks(content)
    content = replace(content, "##\n" => "\n")  # remove code blocks
    #content = replace(content, "###" => "##")  # make level 3 headers level 2
end

#Literate.markdown("./docs/src/1_introduction_computational.jl", "./docs/src/", preprocess=ignore_code_blocks)
#Literate.markdown("./docs/src/2_equations_computational.jl", "./docs/src/", preprocess=ignore_code_blocks)
include("./src/assets/3_eosII/MB_versus_degenerate.jl")
include("./src/assets/3_eosII/polytrope_plot.jl")
#include("./src/assets/7_nucleo1/gamow.jl")

makedocs(sitename="Stellar Structure and Evolution",
        pages= ["index.md",
                "Introduction (23/09/26)" => ["Notes" => "1_introduction.md",
                                              "Exercises"=>"1_introduction_problems.md"],
                "EOS (reading material)" => "2_eos_reading.md",
                "EOS part I (30/09/26)" => ["Notes" => "2_eosI.md",
                                            "Exercises"=>"2_eosI_problems.md"],
                "EOS part II (07/10/26)" => ["Notes" => "3_eosII.md",
                                            "Exercises"=>"3_eosII_problems.md"],
                "Radiative energy transfer (14/10/26)" => ["Notes" => "4_radiative.md",
                                            "Exercises"=>"4_radiative_problems.md"],
                "Convective energy transfer (28/10/26)" => ["Notes" => "5_convection.md",
                                            "Exercises"=>"5_convection_problems.md",
                                            ],
                "Nuclear reactions (04/11/26)" => ["Notes" => "6_nucleo.md",
                                            "Exercises"=>"6_nucleo_problems.md",
                                            ],
                "Assignment 1" => ["Julia installation" => "7_lab1_julia.md",
                                    "Instructions"=>"7_lab1_instructions.md",
                                            ],
                ],
    repo = "github.com/orlox/stars_2026_2027.git")

deploydocs(
    repo = "github.com/orlox/stars_2026_2027.git",
)
