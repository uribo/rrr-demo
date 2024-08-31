rrr-demo
=======

[![Posit Cloud](https://img.shields.io/badge/Posit%20Cloud-rrr--demo-blue?style=social&logo=posit&logoColor=75AADB)](https://posit.cloud/content/8630187)


## 環境を再現する

```r
# Posit Cloudでは、処理落ちすることがあるので実行しないでください。
renv::restore()
```

## 環境構築用

```bash
git init
> Initialized empty Git repository in /Users/suryu/Documents/projects2024/rrr-demo/.git/
```

```r
renv::init()
```

```bash
poetry init --python=3.12.5 
poetry add jupyter jupyterlab seaborn jupytext

poetry run jupyter lab
```

```bash
poetry install --no-root
```
