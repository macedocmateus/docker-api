# Definindo a imagem base
FROM node:18-alpine3.20

# Criar uma pasta do projeto dentro da imagem
WORKDIR /src/app

# Copiando todos os arquivos do projeto para a pasta raiz (app)
COPY . .

# Instalando os pacotes, ele faz a leitura do package.json e instala as dependências
RUN npm install

# Executando o comando de build, ele executa o script de build lá do package.json para converter typescript para javascript
RUN npm run build

# Expondo o numero da porta que o container vai utilizar para comunicar a api e os usuários
EXPOSE 3333

# Executa os comandos de maneira separada, ele executa o script de start la do package.json para rodar aplicação em um ambiente de produção
CMD ["npm", "start"]