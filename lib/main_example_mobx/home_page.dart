import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx_project/list_items_mobx/controller/home_controller.dart';
import 'package:mobx_project/list_items_mobx/widgets/dialog_widget.dart';
import 'package:mobx_project/list_items_mobx/widgets/item_widget.dart';
import 'package:mobx_project/models/item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _controller = GetIt.I.get<HomeController>();

    _showDialog() {
      final dialog = DialogWidget(context);
      dialog.dialog();
    }

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: _controller.setFilter,
          decoration: InputDecoration(
              hintText: "Search...", hintStyle: TextStyle(color: Colors.white)),
        ),
        actions: <Widget>[
          Observer(builder: (_) {
            return IconButton(
              icon: Text(_controller.totalChecked.toString()),
              onPressed: () {},
            );
          })
        ],
      ),
      body: Observer(builder: (_) {
        if (_controller.output.data == null)
          return Center(
            child: CircularProgressIndicator(),
          );

        return ListView.builder(
            itemCount: _controller.output.data.length,
            itemBuilder: (_, index) {
              Item item = _controller.output.data[index];
              return ItemWidget(item: item);
            });
      }),
      // SingleChildScrollView(
      //   child: FormPage(),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // _controller.increment();
          _showDialog();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

/**
 * Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(builder: (_) {
              return Text(
                '${_controller.counter}',
                style: Theme.of(context).textTheme.display1,
              );
            }),
            FlatButton(
              onPressed: () {
                _controller.decrement();
              },
              child: Text(
                "Decrement",
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColorDark,
            )
          ],
        ),
 * 
 * 
 * 
 */
