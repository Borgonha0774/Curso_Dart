class Usuario {
  String? usuario;
  String? senha;

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
  Usuario usuario = new Usuario();
  usuario.usuario = 'adrian@mail.com';
  usuario.senha = '123456';

  usuario.autenticar();
}
