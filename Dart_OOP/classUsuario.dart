class Usuario {
  String? usuario;
  String? senha;
  String? cargo;

  Usuario({String? usuario, String? senha}) {
    this.usuario = usuario;
    this.senha = senha;
  }

  //Named Constructor
  Usuario.diretor({this.usuario, this.senha}) {
    this.cargo = "Diretor";
    print('O ${this.cargo} libera os privilégios!');
  }

  //Metodo
  void autenticar() {
    //recuperar dados do bd (simulação)
    var usuario = 'adrian@mail.com';
    var senha = '123456';
    if (usuario == this.usuario && senha == this.senha) {
      print('Usuario Autenticado :)');
    } else {
      print('Usuario Não Autenticado :(');
    }
  }
}

void main(List<String> args) {
  Usuario usuario = new Usuario(usuario: 'adrian@mail.com', senha: '123456');

  usuario.autenticar();

  Usuario diretor = Usuario.diretor(usuario: 'Jhon', senha: '0987');
  print(diretor);
}
