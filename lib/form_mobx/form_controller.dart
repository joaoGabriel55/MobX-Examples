import 'package:mobx/mobx.dart';
part 'form_controller.g.dart';

class FormController = FormControllerBase with _$FormController;

abstract class FormControllerBase with Store {
  @observable
  String name = '';

  @observable
  String secondName = '';

  @computed
  String get fullName => "$name $secondName";

  @action
  changeName(String _name) {
    name = _name;
  }

  @action
  changeSecondName(String _secondName) {
    secondName = _secondName;
  }
}
