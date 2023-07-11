# Projeto Ruby on Rails com MongoDB 

Bem-vindo ao repositório do projeto Ruby on Rails com MongoDB! Este projeto é um exemplo básico de uma aplicação web desenvolvida em Ruby on Rails, utilizando o banco de dados MongoDB como backend.

## Introdução 📚

O objetivo deste projeto é fornecer um ponto de partida para desenvolvedores interessados em criar aplicações web com Ruby on Rails e MongoDB. Ele inclui uma estrutura básica de diretórios e arquivos, bem como algumas funcionalidades básicas implementadas.

## Tecnologias utilizadas 🧰

O projeto foi desenvolvido utilizando as seguintes tecnologias:

- Ruby on Rails: é um framework web escrito em Ruby, que permite o desenvolvimento rápido de aplicações web. Ele utiliza o padrão MVC (Model-View-Controller) para organizar o código.

- MongoDB: é um banco de dados NoSQL orientado a documentos, que armazena os dados em formato JSON. Ele é uma alternativa flexível e escalável aos bancos de dados relacionais tradicionais.

## Como instalar o projeto 💻

Siga as instruções abaixo para instalar e configurar o projeto em seu ambiente local:

1. Certifique-se de ter o Ruby e o Rails instalados em sua máquina. Você pode verificar isso executando os seguintes comandos no terminal:

```shell
   ruby --version
   rails --version
```
2. Acesse o diretório do projeto:
   
```shell
   cd rails_mongoDB
```

3. Instale as dependências do projeto:

```shell
   bundle install
```

4. Configure o arquivo config/mongoid.yml com as informações de conexão com o seu banco de dados MongoDB.

5. Execute as migrações do banco de dados:

```shell
   rails db:migrate
```

6. Inicie o servidor Rails:

```shell
   rails server
```
