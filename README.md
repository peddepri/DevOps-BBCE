# Efetuando correção no dockerfile 

1. Correção de Erros nas Aplicações:
Identifique os erros nas três aplicações (frontend e dois backends) e corrija-os. Isso pode envolver depuração de código, correção de bugs, configuração adequada e resolução de problemas de dependências.

O primeiro desafio foi corrigido no dockerfile subindo em forma de teste da seguinte forma:

docker build -t ppedde/frontend:1.1 .

docker build -t ppedde/reader:1.1 .

docker build -t ppedde/writer:1.1 .

Após o build, rodar a aplicação

docker run --rm -it -p 3000:3000 ppedde/frontend:1.1 
docker run --rm -it -p 8080:8080 ppedde/reader:1.1
docker run --rm -it -p 8082:8082 ppedde/writer:1.1 

foi corrigido as portas conforme a aplicação e o requirements.txt para instalação dos pacotes.
