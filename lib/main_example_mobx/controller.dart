import 'package:mobx/mobx.dart';
import 'package:mobx_project/models/client.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

// MobX
// Observer, Actions, Reactions
abstract class ControllerBase with Store {
  var client = Client();

  @computed
  bool get isValid {
    return validadeName() == null &&
        validadeEmail() == null &&
        validadeCpf() == null;
  }

  String validadeName() {
    if (client.name == null || client.name.isEmpty)
      return "This field is required";
    else if (client.name.length < 3)
      return "This field must be more than tree characters";

    return null;
  }

  String validadeEmail() {
    if (client.email == null || client.email.isEmpty)
      return "This field is required";
    else if (!client.email.contains("@")) return "This email is not valid";

    return null;
  }

  String validadeCpf() {
    if (client.cpf == null || client.cpf.isEmpty)
      return "This field is required";
    else if (client.cpf.length < 11) return "This field must be 11 characters";

    return null;
  }

  dispose() {
    // Lógica para possibilitar maior aproveitamento de memória
  }
  // @observable
  // int counter = 0;

  // @action
  // increment() {
  //   counter++;
  // }

  // @action
  // decrement() {
  //   if (counter > 0) counter--;
  // }

  // Made on "TORA"
  // var _counter = Observable(0);
  // int get counter => _counter.value;
  // set counter(int counter) => _counter.value = counter;

  // Action increment;
  // Action decrement;

  // ControllerBase() {
  //   increment = Action(_increment);
  //   decrement = Action(_decrement);

  //   autorun((_) {
  //     print(_counter);
  //   });
  // }

  // _increment() {
  //   counter++;
  // }

  // _decrement() {
  //   if (counter > 0) counter--;
  // }
}
