# Hello VuePress

Este proyecto está pensado para tener acceso simple a todos los comandos aprendidos durante la profesión como desarrollador.


### Ejemplo

Para publicar esta página en GitHub pages, se usaron los siguientes comandos en este repositorio:

```bash
npm run build
git add .vuepress/dist -f
git commit -m "actualizando dist"
git subtree push --prefix .vuepress/dist origin gh-pages
```

- **`git add <files> -f`** : Agrega archivos al staggin de manera forzada aún que se encuentren registrados en el archivo `.gitignore`.

- **`git subtree push --prefix <files> <repository> <branch>`** : Crea un subárbol de la rama actual. La opción `--prefix` le indica que archivos queremos que se encuentren en la rama de subárbol.
