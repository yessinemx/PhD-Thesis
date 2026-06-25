param(
    [switch]$ResearchStatement,
    [switch]$Presentation,
    [switch]$Manuscript
)

function Invoke-LatexBuild {
    param(
        [string]$Directory,
        [string]$FileName
    )

    Push-Location $Directory
    try {
        pdflatex -interaction=nonstopmode -halt-on-error $FileName
        pdflatex -interaction=nonstopmode -halt-on-error $FileName
    }
    finally {
        Pop-Location
    }
}

$runAll = -not ($ResearchStatement -or $Presentation -or $Manuscript)

if ($runAll -or $ResearchStatement) {
    Invoke-LatexBuild -Directory "research_statement" -FileName "research_statement.tex"
}

if ($runAll -or $Presentation) {
    Invoke-LatexBuild -Directory "presentation" -FileName "cifre_saa_generali.tex"
}

if ($runAll -or $Manuscript) {
    Invoke-LatexBuild -Directory "manuscript" -FileName "main.tex"
}