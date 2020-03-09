import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_project/list_items_mobx/controller/home_controller.dart';
import 'package:mobx_project/models/item.dart';

class DialogWidget {
  final BuildContext context;
  final _controller = GetIt.I.get<HomeController>();
  Item _item;

  DialogWidget(this.context);

  dialog() {
    _item = Item();
    showDialog(
        context: this.context,
        builder: (_) {
          return AlertDialog(
            title: Text("Add new Item"),
            content: TextField(
              onChanged: (value) {
                _item.setTitle(value);
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "New Item"),
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel")),
              RaisedButton(
                  onPressed: () {
                    _controller.addItem(_item);
                    Navigator.pop(context);
                  },
                  child: Text("Save".toUpperCase()))
            ],
          );
        });
  }
}
