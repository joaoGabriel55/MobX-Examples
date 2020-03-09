import 'package:mobx/mobx.dart';
part 'item.g.dart';

class Item = _ItemBase with _$Item;

abstract class _ItemBase with Store {
  _ItemBase({this.title, this.check = false});

  @observable
  String title;

  @observable
  bool check;

  @action
  setTitle(String value) => title = value;

  @action
  setCheck(bool value) => check = value;
}
