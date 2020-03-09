import 'package:mobx/mobx.dart';
part 'client.g.dart';

class Client = ClientBase with _$Client;

abstract class ClientBase with Store {
  @observable
  String name = '';
  @action
  changeName(String _name) => name = _name;

  @observable
  String cpf = '';
  @action
  changeCpf(String _cpf) => cpf = _cpf;

  @observable
  String email = '';
  @action
  changeEmail(String _email) => email = _email;
}
