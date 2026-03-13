# Desenvolvimento de uma Biblioteca Virtual em Dart

## Descrição

Este projeto foi desenvolvido como parte da **Primeira Atividade Prática Avaliativa (AP1)**.
O objetivo é implementar uma **biblioteca virtual utilizando a linguagem Dart**, aplicando conceitos básicos de programação e organização de código.

A aplicação permite gerenciar um acervo de livros através de operações simples como **cadastrar, remover e listar livros**.

Apresentação da atividade:
https://docs.google.com/presentation/d/1aW9c3-MQUFeyr__nEksOlcv9bsuXHIFe_dhLiKlA1aA/edit?usp=sharing

---

## Funcionalidades

### 1. Cadastrar Livros

Permite adicionar novos livros ao acervo da biblioteca.
Cada livro possui os seguintes atributos:

* ID
* Título
* Autor
* Ano de publicação
* Gênero

---

### 2. Remover Livros

Permite remover livros cadastrados na biblioteca através do **ID do livro**.

---

### 3. Listar Livros

Exibe todos os livros cadastrados no acervo com suas informações organizadas.

---

## Estrutura do Projeto

```
projeto/
│
└── main.dart
```

**main.dart**
Responsável pela execução do programa e pelo menu de interação com o usuário.

**biblioteca.dart**
Contém as classes responsáveis pela lógica da biblioteca e dos livros.

---

## Requisitos Técnicos

* Linguagem utilizada: **Dart**
* Organização clara do código
* Uso de classes e métodos
* Implementação das funcionalidades solicitadas
* Testes através de um programa principal (`main`)

---

## Como Executar o Projeto

1. Instale o Dart em sua máquina.
2. Clone este repositório:

```
git clone https://github.com/seu-usuario/biblioteca-virtual-dart-ap1
```

3. Entre na pasta do projeto:

```
cd biblioteca-virtual-dart-ap1
```

4. Execute o programa:

```
dart run main.dart
```

---

## Exemplo de Menu

```
Menu
1 - Cadastrar livro
2 - Listar livros
3 - Remover livro por ID
4 - Sair
```

---

## Autor

Assis P. Neto

---

## Atividade

**Primeira Atividade Prática – Avaliativa (AP1)**
Valor: **0.5 pontos**

Projeto desenvolvido para fins acadêmicos.
