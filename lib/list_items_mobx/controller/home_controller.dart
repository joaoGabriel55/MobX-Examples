import 'package:mobx/mobx.dart';
import 'package:mobx_project/models/item.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  //RxDart
  final listItems = BehaviorSubject<List<Item>>.seeded([]);
  final filter = BehaviorSubject<String>.seeded('');

  ObservableStream<List<Item>> output;

  _HomeControllerBase() {
    output = Rx.combineLatest2<List<Item>, String, List<Item>>(
        listItems.stream, filter.stream, (list, filter) {
      if (filter.isEmpty) {
        return list;
      } else {
        return list
            .where((elem) => elem.title.toLowerCase().contains(filter))
            .toList();
      }
    }).asObservable(initialValue: []);
  }

  // @observable
  // ObservableList<Item> listItems = [
  //   Item(title: "Item 1"),
  //   Item(title: "Item 2"),
  //   Item(title: "Item 3")
  // ].asObservable();

  @computed
  int get totalChecked => output.value.where((elem) => elem.check).length;
  // int get totalChecked => listItems.where((elem) => elem.check).length;

  // @computed
  // List<Item> get filteredList {
  //   if (filter.isEmpty) {
  //     return listItems;
  //   } else {
  //     return listItems
  //         .where((elem) => elem.title.toLowerCase().contains(filter))
  //         .toList();
  //   }
  // }

  // @observable
  // String filter = '';

  // For mobx
  // @action
  // setFilter(String value) => filter = value;
  setFilter(String value) => filter.add(value);

  @action
  addItem(Item item) {
    // listItems.add(item);
    var list = List<Item>.from(listItems.value);
    list.add(item);
    listItems.add(list);
  }

  @action
  removeItem(Item item) {
    // listItems.value.removeWhere((elem) => elem.title == item.title);
    var list = List<Item>.from(listItems.value);
    list.removeWhere((elem) => elem.title == item.title);
    listItems.add(list);
  }
}
