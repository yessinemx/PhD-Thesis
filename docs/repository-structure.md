# Structure du dépôt

Ce document fixe une structure simple pour éviter que le dépôt ne dérive au fil de la thèse.

## Principes

- Séparer les livrables par usage : cadrage, manuscrit, présentations, documentation.
- Mutualiser les figures et la bibliographie au niveau racine quand elles servent plusieurs documents.
- Garder les sorties temporaires hors du versionnement Git.

## Règles pratiques

- Les noms de fichiers LaTeX restent explicites et stables.
- Les présentations importantes gardent leur source `.tex` et leur `.pdf` final si nécessaire.
- Les figures réutilisées ne doivent pas être dupliquées dans plusieurs sous-dossiers.
- Les documents métier ou administratifs durables vont dans `docs/`.

## Convention proposée pour la suite

- `manuscript/main.tex` pour le manuscrit complet quand la rédaction commencera.
- `bibliography/references.bib` comme point d'entrée bibliographique commun.
- Un script utilitaire par besoin clair dans `scripts/`.