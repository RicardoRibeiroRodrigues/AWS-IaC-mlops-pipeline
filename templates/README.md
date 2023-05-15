# Templates

Nessa pasta estão os templates básicos utilizados pela infraestrutura. Para utilizar eles: 

Utilizando o git:

1. Entre na pasta da pipeline de model build e inicialize o git nela:
```sh 
cd modelbuild_pipeline & git init
```
2. Faça o Push dos conteúdos para o seu repositório remoto:
```sh
git branch -M main
git add .
git commit -m "Push build template."
git remote add origin <O LINK DO SEU REPOSITÓRIO GITLAB DE BUILD AQUI>
git push origin main
```
3. Entre na pasta da pipeline do model deploy e inicialize o git nela:
```sh
cd ../modeldeploy_pipeline & git init
```
4. Faça o Push do conteúdo para o repositório remoto:
```sh
git branch -M main
git add .
git commit -m "Push deploy template"
git remote add origin <O LINK DO SEU REPOSITÓRIO GITLAB DE DEPLOY AQUI>
git push origin main
```