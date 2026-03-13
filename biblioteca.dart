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
    _acervo.removeWhere((livro) => livro.id == id);
    print('Livro removido se existia');
  }

  int get totalLivros => _acervo.length;
}
