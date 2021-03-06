using Documenter
using JsonGrinder

DocMeta.setdocmeta!(JsonGrinder, :DocTestSetup, :(using JsonGrinder); recursive=true)
# for running only doctests
# doctest(JsonGrinder)
makedocs(
         sitename = "JsonGrinder.jl",
         # doctest = false,
         format = Documenter.HTML(sidebar_sitename=false,
                                  prettyurls=get(ENV, "CI", nothing) == "true",
                                  assets=["assets/favicon.ico", "assets/custom.css"]),
         modules = [JsonGrinder],
         pages = ["Home" => "index.md",
                  "Schema" => "schema.md",
                  "Creating extractors" => "extractors.md",
                  "Extractor functions" => "exfunctions.md",
                  "AutoML" => "automl.md",
                  "API Documentation" => "api.md",
                  "Developers" => "developers.md",
                  "Citation" => "citation.md"
                  ],

)

deploydocs(
    repo = "github.com/pevnak/JsonGrinder.jl.git",
)
