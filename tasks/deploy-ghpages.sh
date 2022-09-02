#!/bin/bash

dist_path=".vuepress/dist"
temp_branch="temp-no-push"
pages_branch="gh-pages"

# Obteniendo rama actual
current_branch=$(git symbolic-ref --short HEAD)

# Construyendo proyecto
# npm run build

# cambiando a rama temporal
git checkout -b $temp_branch

# Forzando dist en el staggin
git add $dist_path -f

# Comitiando cambios del dist
git commit -m "actualizando dist"

# Borrando archivos anteriores de GitHub Pages
git push origin --delete $pages_branch

# Publicando cambios en GitHub Pages
git subtree push --prefix $dist_path origin $pages_branch

# Regresando a rama inicial
git checkout $current_branch

# Eliminando rama temporal
git branch -D $temp_branch

echo "Actualización exitosa: https://andres-geotec.github.io/notas-dev/"