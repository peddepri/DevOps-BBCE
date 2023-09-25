# Efetuando correção no dockerfile 

O primeiro desafio foi corrigido no dockerfile subindo em forma de teste da seguinte forma:

docker build -t ppedde/frontend:1.1 .

docker build -t ppedde/reader:1.1 .

docker build -t ppedde/writer:1.1 .

Após o build, rodar a aplicação

docker run --rm -it -p 3000:3000 ppedde/frontend:1.1 
docker run --rm -it -p 8080:8080 ppedde/reader:1.1
docker run --rm -it -p 8082:8082 ppedde/writer:1.1 

foi corrigido as portas conforme a aplicação e o requirements.txt para instalação dos pacotes.
===================================================================================================
# Desafio DevOps BBCE

Desafio preparado para entender um pouco mais dos seus conhecimentos na área de DevOps

## Conteúdo
Na pasta apps existem 3 aplicações, um frontend que se comunica com dois backend's python, e estes se comunicam com um Redis para inserir e validar dados. 

As aplicações contém erros, sendo necessario a correção para execução.

## O que deve ser feito?
  
- Ajuste as aplicações para correto funcionamento
- Crie a estrutura de recursos cloud necessários utilizando terraform como IAC para subida das aplicações em kubernetes
- Crie um pipeline para cada aplicação separadamente que faça o CI/CD
- Crie um README contendo o passo a passo das ações para fianlização do desafio

## Entrega
Crie um repositório no github contendo o desafio completo e nos informe o link para acesso.

## Sugestões
  
Sugestão de realização do desafio utilizando cloud AWS e CI/CD no Azure Devops
