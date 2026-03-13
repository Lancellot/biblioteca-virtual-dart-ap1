import 'dart:io';

class Livro {
  final String id;
  final String titulo;
  final String autor;
  final int anoPublicacao;
  final String genero;

  Livro({
    required this.id,
    required this.titulo,
    required this.autor,
    required this.anoPublicacao,
    required this.genero,
  });

  @override
  String toString() {
    return '''
ID: $id
Titulo: $titulo
Autor: $autor
Ano: $anoPublicacao
Genero: $genero
''';
  }
}

class BibliotecaVirtual {
  final String nome;
  final List<Livro> _acervo = [];
  int _contadorId = 1;

  BibliotecaVirtual({required this.nome});

  String _gerarId() {
    String id = 'LIV${_contadorId.toString().padLeft(4, '0')}';
    _contadorId++;
    return id;
  }

  void cadastrarLivro({
    required String titulo,
    required String autor,
    required int anoPublicacao,
    required String genero,
  }) {
    final livro = Livro(
      id: _gerarId(),
      titulo: titulo,
      autor: autor,
      anoPublicacao: anoPublicacao,
      genero: genero,
    );
    _acervo.add(livro);
    print('Livro cadastrado com ID: ${livro.id}');
  }

  void listarTodos() {
    if (_acervo.isEmpty) {
      print('Nenhum livro cadastrado');
      return;
    }
    for (var livro in _acervo) {
      print(livro);
    }
  }

  void removerPorId(String id) {
    final existia = _acervo.any((livro) => livro.id == id);
    _acervo.removeWhere((livro) => livro.id == id);
    print(existia ? 'Livro $id removido!' : 'ID não encontrado.');
  }

  int get totalLivros => _acervo.length;
}

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

    opcao = int.tryParse(stdin.readLineSync()!) ?? 0;

    if (opcao == 1) {
      print('Titulo:');
      String titulo = stdin.readLineSync()!;
      print('Autor:');
      String autor = stdin.readLineSync()!;
      print('Ano de publicacao:');
      int ano = int.tryParse(stdin.readLineSync()!) ?? 0;
      print('Genero:');
      String genero = stdin.readLineSync()!;
      biblioteca.cadastrarLivro(
        titulo: titulo,
        autor: autor,
        anoPublicacao: ano,
        genero: genero,
      );
    } else if (opcao == 2) {
      biblioteca.listarTodos();
    } else if (opcao == 3) {
      print('Digite o ID do livro:');
      String id = stdin.readLineSync()!;
      biblioteca.removerPorId(id);
    } else if (opcao == 4) {
      print('Programa encerrado');
    } else {
      print('Opcao invalida, tente novamente');
    }
  }
}
