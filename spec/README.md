# N3 Builtin Functions

This is the template for the https://w3c.github.io/N3 website (builtin function section).

Requirements are written in [Markdown](https://daringfireball.net/projects/markdown/) and transformed to HTML using the [Bikeshed preprocessor](https://tabatkins.github.io/bikeshed/).

The editors’ draft of the specification can also be [read directly](https://w3c-cg.github.io/n3Builtins/).

# Requirements

These tools are required for testing and development of the documentation:

- Docker 

Optional:

- [EYE](https://github.com/eyereasoner/eye)

# Makefile

### index.html

- `make index` : generate a `index.bs` document from the `src` files
  
Choose one of:

- `make spec` : generate HTML `index.html` from `index.bs` (docker)
- `make watch` : run a watcher program on `index.bs` (continuous development)
- `make web` : generate HTML `index.html` from `index.bs` (without using docker)

# Editing

## HTML

Edit the `index_TEMPLATE.bs` file and run:

```
make index
make web
```

## N3 examples

Edit the `src/*` files and run:

```
make valid
make index
make web
```

## Layout

Edit `create-markdown.py` , `index_TEMPLATE.bs` code and run:

```
make index
make web
```