import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_project/list_items_mobx/controller/home_controller.dart';
import 'package:mobx_project/models/item.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = GetIt.I.get<HomeController>();

    return Observer(builder: (_) {
      return Container(
          child: Card(
        child: ListTile(
          title: Text(item.title),
          leading: Checkbox(
              value: item.check,
              onChanged: (bool value) {
                item.setCheck(value);
              }),
          trailing: IconButton(
              icon: Icon(
                Icons.remove_circle,
                color: Colors.red,
              ),
              onPressed: () {
                _controller.removeItem(item);
              }),
        ),
      ));
    });
  }
}

// Container(
//         child: Card(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Checkbox(value: true, onChanged: null),
//           Text(
//             "Oie",
//             style: TextStyle(fontSize: 24),
//           ),
//           SizedBox(width: 200),
//           IconButton(
//               icon: Icon(
//                 Icons.remove_circle,
//                 color: Colors.red,
//               ),
//               onPressed: () {})
//         ],
//       ),
//     ))
