# PhD Thesis Repository

Dépôt de travail pour la thèse CIFRE menée avec Generali France.

Ce dépôt regroupe les livrables LaTeX déjà existants, la future rédaction de thèse,
les supports de présentation et la documentation de travail.

## Structure

```text
.
|-- .github/
|   `-- workflows/
|-- assets/
|   `-- figures/
|-- bibliography/
|-- docs/
|-- manuscript/
|-- notes/
|-- presentation/
|-- research_statement/
`-- scripts/
```

## Rôle des dossiers

- `research_statement/` : dossier de cadrage scientifique et industriel.
- `presentation/` : slides, soutenances internes, comités et réunions métier.
- `manuscript/` : futur manuscrit principal de thèse.
- `bibliography/` : fichiers `.bib` partagés et références communes.
- `assets/figures/` : figures mutualisées entre manuscrit, slides et documents.
- `docs/` : notes de structuration, feuille de route, documentation du dépôt.
- `notes/` : notes de travail, idées, comptes rendus non sensibles.
- `scripts/` : scripts utilitaires pour compilation ou automatisation légère.
- `.github/workflows/` : automatisation GitHub Actions pour vérifier les builds LaTeX.

## Livrables déjà présents

- `research_statement/research_statement.tex`
- `presentation/cifre_saa_generali.tex`

## Commandes utiles

Compilation locale de la présentation :

```powershell
Set-Location presentation
pdflatex -interaction=nonstopmode -halt-on-error cifre_saa_generali.tex
pdflatex -interaction=nonstopmode -halt-on-error cifre_saa_generali.tex
```

Compilation locale du research statement :

```powershell
Set-Location research_statement
pdflatex -interaction=nonstopmode -halt-on-error research_statement.tex
pdflatex -interaction=nonstopmode -halt-on-error research_statement.tex
```

Compilation locale du manuscrit :

```powershell
Set-Location manuscript
pdflatex -interaction=nonstopmode -halt-on-error main.tex
pdflatex -interaction=nonstopmode -halt-on-error main.tex
```

Build PowerShell global :

```powershell
./scripts/build-all.ps1
```

## Conventions recommandées

- Un document principal par dossier LaTeX.
- Images et schémas réutilisables dans `assets/figures/`.
- Bibliographie mutualisée dans `bibliography/` dès que plusieurs documents partagent les mêmes sources.
- Pas de fichiers de build intermédiaires versionnés.

## Étapes suivantes sur GitHub

1. Créer le dépôt distant sur GitHub.
2. Ajouter le remote `origin`.
3. Faire un premier commit avec cette structure.
4. Activer GitHub Actions pour vérifier les compilations LaTeX.