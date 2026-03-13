import 'dart:io';

void main() {
  final biblioteca = BibliotecaVirtual(nome: 'Biblioteca');

  int opcao = 0;

  while (opcao != 4) {
    print('\nMenu');
    print('1 - Cadastrar livro');
    print('2 - Listar livros');
    print('3 - Remover livro por ID');
    print('4 - Sair');
    print('Escolha uma opcao:');

    opcao = int.parse(stdin.readLineSync()!);

    if (opcao == 1) {
      print('Titulo:');
      String titulo = stdin.readLineSync()!;

      print('Autor:');
      String autor = stdin.readLineSync()!;

      print('Ano de publicacao:');
      int ano = int.parse(stdin.readLineSync()!);

      print('Genero:');
      String genero = stdin.readLineSync()!;

      biblioteca.cadastrarLivro(
        titulo: titulo,
        autor: autor,
        anoPublicacao: ano,
        genero: genero,
      );
    }

    if (opcao == 2) {
      biblioteca.listarTodos();
    }

    if (opcao == 3) {
      print('Digite o ID do livro:');
      String id = stdin.readLineSync()!;

      biblioteca.removerPorId(id);
    }

    if (opcao == 4) {
      print('Programa encerrado');
    }
  }
}
