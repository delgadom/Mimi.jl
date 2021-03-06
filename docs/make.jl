using Documenter, Mimi

makedocs(
    modules = [Mimi],
	format = :html,
	sitename = "Mimi.jl",
	pages = [
		"Home" => "index.md",
		"Installation Guide" => "installation.md",
		"Tutorial" => "tutorial.md",
		"User Guide" => "userguide.md",
		"FAQ" => "faq.md",
		"Reference" => "reference.md"]
)

deploydocs(
    deps = nothing,
    make = nothing,
	target = "build",
    repo = "github.com/anthofflab/Mimi.jl.git",
    julia = "0.5"
)
